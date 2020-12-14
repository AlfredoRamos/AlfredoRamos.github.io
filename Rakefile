# frozen_string_literal: true

$stdout.sync = $stderr.sync = true

require 'jekyll'
require 'pathname'
require 'to_slug'
require 'scss_lint/rake_task'
require 'rubocop/rake_task'
require 'net/http'
require 'oj'

SCSSLint::RakeTask.new
RuboCop::RakeTask.new

Rake::TaskManager.record_task_metadata = true

namespace :new do
  # Base content
  task :base, [:opts] do |_t, args|
    # Prevent rake tasks errors
    ARGV.each { |arg| task arg.to_sym }

    # Allowed content types
    types = %w[draft post page]

    # Set content title
    args[:opts][:title] = ARGV[1].to_s.strip
    Jekyll.logger.abort_with 'Please specify a title' if args[:opts][:title].empty?

    # Set default content type
    args[:opts][:type] = args[:opts][:type].to_s.strip
    args[:opts][:type] = 'draft' unless types.include?(args[:opts][:type])

    # Set default content path
    args[:opts][:path] = case args[:opts][:type]
                         when 'draft' then '_drafts'
                         when 'post' then '_posts'
                         else '' # page
                         end

    # Set default content extension
    args[:opts][:ext] = case args[:opts][:type]
                        when 'page' then 'html'
                        else 'md' # draft, post
                        end

    # Assign default content data
    content = {
      title: args[:opts][:title],
      date: Time.now
    }

    # Generate content slug
    content[:slug] = format(
      args[:opts][:type].eql?('page') ? '%<title>s' : '%<date>s-%<title>s',
      date: content[:date].strftime('%F'),
      title: content[:title]
    ).to_slug.chomp('-')

    # Create file
    file = Pathname.new(Pathname.new(__FILE__).dirname).join(
      args[:opts][:path],
      format(
        '%<slug>s.%<ext>s',
        slug: content[:slug],
        ext: args[:opts][:ext]
      )
    )

    # Check if file already exists
    if file.exist?
      Jekyll.logger.abort_with format(
        'File already exists: %<file>s',
        file: file.relative_path_from(Pathname.new(__FILE__).dirname)
      )
    end

    # Create content
    File.open(file, 'w') do |c|
      c.puts '---'
      c.puts format('title: %<title>s', title: content[:title])
      c.puts format('permalink: /%<slug>s/', slug: content[:slug]) if args[:opts][:type].eql?('page')

      if %w[draft post].include?(args[:opts][:type])
        c.puts format('date: %<date>s', date: content[:date].strftime('%F %T %z'))
        c.puts 'category: '
        c.puts 'tags: []'
      end

      c.puts '---'
      c.puts
    end

    # Check if file was created successfully
    unless file.exist?
      Jekyll.logger.abort_with format(
        'Could not create file: %<file>s',
        file: file.relative_path_from(Pathname.new(__FILE__).dirname)
      )
    end

    # Open with editor
    Jekyll.logger.info format(
      'File created: %<file>s',
      file: file.relative_path_from(Pathname.new(__FILE__).dirname)
    )
    system(format(
      '%<editor>s %<file>s',
      editor: ENV['EDITOR'],
      file: file
    ))
  end

  # Post
  desc 'Create new draft'
  task :draft do
    Rake::Task['new:base'].reenable
    Rake::Task['new:base'].invoke(type: 'draft')
  end

  # Post
  desc 'Create new post'
  task :post do
    Rake::Task['new:base'].reenable
    Rake::Task['new:base'].invoke(type: 'post')
  end

  # Page
  desc 'Create new page'
  task :page do
    Rake::Task['new:base'].reenable
    Rake::Task['new:base'].invoke(type: 'page')
  end
end

namespace :cache do
  # Clear
  desc 'Clear CloudFlare cache'
  task :clear do |t|
    missing = []

    %w[CLOUDFLARE_API_ZONE_ID CLOUDFLARE_API_TOKEN].each do |name|
      missing.push(name) unless ENV.key?(name) && !ENV.fetch(name, '').empty?
    end

    unless missing.empty?
      Jekyll.logger.abort_with format(
        'Missing environment variables: %<vars>s',
        vars: missing.join(', ')
      )
    end

    zone_id = ENV.fetch('CLOUDFLARE_API_ZONE_ID', '')
    token = ENV.fetch('CLOUDFLARE_API_TOKEN', '')

    invalid = []
    invalid.push('CLOUDFLARE_API_ZONE_ID') unless zone_id.match?(%r[^\w{32}$])
    invalid.push('CLOUDFLARE_API_TOKEN') unless token.match?(%r[^[\w\-]{40}$])

    unless invalid.empty?
      Jekyll.logger.abort_with format(
        'Invalid values for: %<vars>s',
        vars: invalid.join(', ')
      )
    end

    uri = URI(format(
      'https://api.cloudflare.com/client/v4/zones/%<zone_id>s/purge_cache',
      zone_id: zone_id
    ))
    request = Net::HTTP::Post.new(uri)
    request['Content-Type'] = 'application/json'
    request['Authorization'] = format('Bearer %<token>s', token: token)
    request.body = '{"purge_everything": true}'

    response = Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) { |http| http.request(request) }
    json = Oj.safe_load(response.body)

    Jekyll.logger.info(format('%<topic>s:', topic: t.comment), 'Success') unless json['success'] == false

    errors = []

    unless response.is_a?(Net::HTTPSuccess)
      errors.push(format(
        'HTTP/%<http_version>s %<status_code>s %<message>s',
        http_version: response.http_version,
        status_code: response.code,
        message: response.message
      ))

      json['errors'].each do |err|
        errors.push(format(
          '[%<error_code>s] %<error_message>s',
          error_code: err['code'],
          error_message: err['message']
        ))

        next unless err.key?('error_chain')

        err['error_chain'].each do |e|
          errors.push(format(
            '[%<error_code>s] %<error_message>s',
            error_code: e['code'],
            error_message: e['message']
          ))
        end
      end

      unless errors.empty?
        Jekyll.logger.abort_with format(
          'Errors:%<felem>s%<errors>s',
          errors: errors.join("\n\t- "),
          felem: "\n\t- "
        )
      end
    end
  end
end
