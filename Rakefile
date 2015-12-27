#!/usr/bin/env ruby
# encoding: UTF-8

require 'to_slug'

namespace :post do
  desc 'Create a new Jekyll post'
  task :new do
    title = ENV['title']
    time = Time.now
    slug = "#{time.strftime("%Y-%m-%d")}-#{title}".to_slug.gsub(/-$/, '')
  
    # File extension
    ext = 'md'

    # File name
    file = File.join(
      File.dirname(__FILE__),
      '_posts',
      "#{slug}.#{ext}"
    )
  
    if File.exist? file
      abort 'File already exists!'
    end

    # Post content
    content = "---\n"
    content += "layout: post\n"
    content += "title: \"#{title}\"\n"
    content += "date: #{time.strftime("%Y-%m-%d %H:%M:%S %z")}\n"
    content += "categories: []\n"
    content += "---\n"

    # Write file
    File.open(file, 'w') do |file|
      file.write(content)
    end

    puts "Post written to _posts/#{slug}.#{ext}"
    system ("#{ENV['EDITOR']} #{file}")
  end
end