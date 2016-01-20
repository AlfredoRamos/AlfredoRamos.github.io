#!/usr/bin/env ruby
# encoding: UTF-8

require 'to_slug'

namespace :new do
  # Post
  desc 'Create new post'
  task :post do
    # Post default data
    post = {
      :slug   => '',
      :title  => !ENV['title'].nil? ? ENV['title'] : 'Untitled',
      :date   => Time.now,
      :body   => '',
      :path   => '_posts',
      :ext    => 'md'
    }

    # Slug
    post[:slug] = "#{post[:date].strftime('%Y-%m-%d')}-#{post[:title]}".to_slug.chomp('-')

    # Create post
    file = File.join(
      File.dirname(__FILE__),
      post[:path],
      "#{post[:slug]}.#{post[:ext]}"
    )

    # Check if already exists
    if File.exist? file
      abort 'Post already exists!'
    end

    # Post content
    post[:body] = "---\n"
    post[:body] += "layout: post\n"
    post[:body] += "title: '#{post[:title]}'\n"
    post[:body] += "date: #{post[:date].strftime("%Y-%m-%d %H:%M:%S %z")}\n"
    post[:body] += "categories: []\n"
    post[:body] += "tags: []\n"
    post[:body] += "---\n\n\n"

    # Check if post exists
    if !File.exist? file
      # Create post
      File.open(file, 'w') do |file|
        file.write(post[:body])
      end
    else
      abort 'Post already exists'
    end

    # Check if the post has been created successfully
    if File.exists? file
      puts "Post written to #{post[:path]}/#{post[:slug]}.#{post[:ext]}"
      system "#{ENV['EDITOR']} #{file}"
    else
      warn "Couldn\'t create post in the '#{post[:path]}' path. Do you have write permissions?"
    end
  end

  # Page
  task :page do |page|
    # Page default data
    page = {
      :slug   => '',
      :title  => !ENV['title'].nil? ? ENV['title'] : 'Untitled',
      :date   => Time.now,
      :body   => '',
      :path   => '',
      :ext    => 'html'
    }

    # Slug
    page[:slug] = "#{page[:title]}".to_slug.chomp('-')

    # Create post
    file = File.join(
      File.dirname(__FILE__),
      page[:path],
      "#{page[:slug]}.#{page[:ext]}"
    )

    # Check if already exists
    if File.exist? file
      abort 'Page already exists!'
    end

    # Page content
    page[:body] = "---\n"
    page[:body] += "layout: page\n"
    page[:body] += "title: '#{page[:title]}'\n"
    page[:body] += "---\n\n\n"

    # Check if page exists
    if !File.exist? file
      # Create page
      File.open(file, 'w') do |file|
        file.write(page[:body])
      end
    else
      abort 'Page already exists'
    end

    # Check if the page has been created successfully
    if File.exists? file
      puts "Page written to #{page[:path]}/#{page[:slug]}.#{page[:ext]}"
      system "#{ENV['EDITOR']} #{file}"
    else
      warn "Couldn\'t create page in the root path. Do you have write permissions?"
    end
  end

end
