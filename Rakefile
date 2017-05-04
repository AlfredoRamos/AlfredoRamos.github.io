# encoding: UTF-8
$stdout.sync = $stderr.sync = true

require 'to_slug'

namespace :new do
  # Post
  desc 'Create new post'
  task :post do
    # Get title as string
    ENV['title'] = ENV['title'].to_s.strip

    # Title check
    if ENV['title'].empty?
      abort 'Specify a title'
    end

    # Post default data
    post = {
      :slug   => '',
      :title  => ENV['title'],
      :date   => Time.now,
      :path   => '_posts',
      :ext    => 'md'
    }

    # Slug
    post[:slug] = '%1$s-%2$s' % [post[:date].strftime('%Y-%m-%d'), post[:title]]
    post[:slug] = post[:slug].to_slug.chomp('-')

    # Create post
    file = File.join(
      File.dirname(__FILE__),
      post[:path],
      '%1$s.%2$s' % [post[:slug], post[:ext]]
    )

    # Check if already exists
    if File.exist?(file)
      abort 'Post already exists'
    else
      # Create post
      File.open(file, 'w') do |p|
        p.puts '---'
        p.puts 'title: %s' % post[:title]
        p.puts 'date: %s' % post[:date].strftime('%Y-%m-%d %H:%M:%S %z')
        p.puts 'category: '
        p.puts 'tags: []'
        p.puts '---'
        p.puts
      end
    end

    # Check if the post has been created successfully
    if File.exists?(file)
      puts 'Post written to %1$s/%2$s' % [post[:path], File.basename(file)]
      system('%1$s %2$s' % [ENV['EDITOR'], file])
    else
      warn 'Couldn\'t create post'
    end
  end

  # Page
  desc 'Create new page'
  task :page do |page|
    # Get title as string
    ENV['title'] = ENV['title'].to_s.strip

    # Title check
    if ENV['title'].empty?
      abort 'Specify a title'
    end

    # Page default data
    page = {
      :slug   => '',
      :title  => ENV['title'],
      :date   => Time.now,
      :path   => '',
      :ext    => 'html'
    }

    # Slug
    page[:slug] = '%s' % page[:title]
    page[:slug] = page[:slug].to_slug.chomp('-')

    # Create post
    file = File.join(
      File.dirname(__FILE__),
      page[:path],
      '%1$s.%2$s' % [page[:slug], page[:ext]]
    )

    # Check if page exists
    if File.exist?(file)
      abort 'Page already exist'
    else
      # Create page
      File.open(file, 'w') do |p|
        p.puts '---'
        p.puts 'title: %s' % page[:title]
        p.puts 'permalink: /%s/' % page[:slug]
        p.puts '---'
        p.puts
      end
    end

    # Check if the page has been created successfully
    if File.exists?(file)
      puts 'Page written to %1$s/%2$s' % [page[:path], File.basename(file)]
      system('%1$s %2$s' % [ENV['EDITOR'], file])
    else
      warn 'Couldn\'t create page.'
    end
  end
end
