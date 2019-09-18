# frozen_string_literal: true

$stdout.sync = $stderr.sync = true

require 'pathname'
require 'to_slug'
require 'scss_lint/rake_task'
require 'rubocop/rake_task'

SCSSLint::RakeTask.new

RuboCop::RakeTask.new

namespace :new do
  # Base content
  task :base, [:opts] do |_t, args|
    # Prevent rake tasks errors
    ARGV.each { |arg| task arg.to_sym do ; end }

    # Allowed content types
    types = ['draft', 'post', 'page']

    # Set content title
    args[:opts][:title] = ARGV[1].to_s.strip
    abort 'Please specify a title' if args[:opts][:title].empty?

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
    file = Pathname.new(Pathname.new(__FILE__).dirname,).join(
      args[:opts][:path],
      format(
        '%<slug>s.%<ext>s',
        slug: content[:slug],
        ext: args[:opts][:ext]
      )
    )

    # Check if file already exists
    abort format(
      'File already exists: %<file>s',
      file: file.relative_path_from(Pathname.new(__FILE__).dirname)
    ) if file.exist?

    # Create content
    File.open(file, 'w') do |c|
      c.puts '---'
      c.puts format('title: %<title>s', title: content[:title])
      c.puts format('permalink: /%<slug>s/', slug: content[:slug]) if args[:opts][:type].to_s.eql?('page')

      if ['draft', 'post'].include?(args[:opts][:type])
        c.puts format('date: %<date>s', date: content[:date].strftime('%F %T %z'))
        c.puts 'category: '
        c.puts 'tags: []'
      end

      c.puts '---'
      c.puts
    end

    # Check if file was created successfully
    abort format(
      'Could not create file: %<file>s',
      file: file.relative_path_from(Pathname.new(__FILE__).dirname)
    ) unless file.exist?

    # Open with editor
    puts format(
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
