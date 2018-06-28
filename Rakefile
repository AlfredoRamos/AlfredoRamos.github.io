# frozen_string_literal: true

$stdout.sync = $stderr.sync = true

require 'to_slug'

namespace :new do
  # Post
  desc 'Create new post'
  task :post do
    # Get title as string
    ENV['title'] = ENV['title'].to_s.strip

    # Title check
    abort 'Specify a title' if ENV['title'].empty?

    # Post default data
    post = {
      slug: '',
      title: ENV['title'],
      date: Time.now,
      path: '_posts',
      ext: 'md'
    }

    # Slug
    post[:slug] = format(
      '%<date>s-%<title>s',
      date: post[:date].strftime('%Y-%m-%d'),
      title: post[:title]
    ).to_slug.chomp('-')

    # Create post
    file = File.join(
      File.dirname(__FILE__),
      post[:path],
      format(
        '%<slug>s.%<ext>s',
        slug: post[:slug],
        ext: post[:ext]
      )
    )

    # Check if already exists
    if File.exist?(file)
      abort 'Post already exists'
    else
      # Create post
      File.open(file, 'w') do |p|
        p.puts '---'
        p.puts format('title: %<title>s', title: post[:title])
        p.puts format('date: %<date>s', date: post[:date].strftime('%Y-%m-%d %H:%M:%S %z'))
        p.puts 'category: '
        p.puts 'tags: []'
        p.puts '---'
        p.puts
      end
    end

    # Check if the post has been created successfully
    if File.exist?(file)
      puts format(
        'Post written to %<path>s/%<file>s',
        path: post[:path],
        file: File.basename(file)
      )
      system(format(
        '%<editor>s %<file>s',
        editor: ENV['EDITOR'],
        file: file
      ))
    else
      warn 'Could nott create post'
    end
  end

  # Page
  desc 'Create new page'
  task :page do
    # Get title as string
    ENV['title'] = ENV['title'].to_s.strip

    # Title check
    abort 'Specify a title' if ENV['title'].empty?

    # Page default data
    page = {
      slug: '',
      title: ENV['title'],
      date: Time.now,
      path: '',
      ext: 'html'
    }

    # Slug
    page[:slug] = format(
      '%<title>s',
      title: page[:title]
    ).to_slug.chomp('-')

    # Create post
    file = File.join(
      File.dirname(__FILE__),
      page[:path],
      format(
        '%<slug>s.%<ext>',
        slug: page[:slug],
        ext: page[:ext]
      )
    )

    # Check if page exists
    if File.exist?(file)
      abort 'Page already exist'
    else
      # Create page
      File.open(file, 'w') do |p|
        p.puts '---'
        p.puts format('title: %<title>s', title: page[:title])
        p.puts format('permalink: /%<slug>s/', slug: page[:slug])
        p.puts '---'
        p.puts
      end
    end

    # Check if the page has been created successfully
    if File.exist?(file)
      puts format(
        'Page written to %<path>s/%<file>s',
        path: page[:path],
        file: File.basename(file)
      )
      system(format(
        '%<editor>s %<file>s',
        editor: ENV['EDITOR'],
        file: file
      ))
    else
      warn 'Could not create page'
    end
  end
end
