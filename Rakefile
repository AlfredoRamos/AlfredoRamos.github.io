#!/usr/bin/env ruby
# encoding: UTF-8

require 'to_slug'

namespace :post do
  desc 'Create a new Jekyll post'
  task :new do
    post = {
      :title  => ENV['title'],
      :time   => Time.now,
      :ext    => 'md',
      :path   => '_posts'
    }

    # Slug
    post[:slug] = "#{post[:time].strftime("%Y-%m-%d")}-#{post[:title]}".to_slug.gsub(/-$/, '')

    # File name
    file = File.join(
      File.dirname(__FILE__),
      post[:path],
      "#{post[:slug]}.#{post[:ext]}"
    )

    if File.exist? file
      abort 'Post already exists!'
    end

    # Post content
    post[:body] = "---\n"
    post[:body] += "layout: post\n"
    post[:body] += "title: '#{post[:title]}'\n"
    post[:body] += "date: #{post[:time].strftime("%Y-%m-%d %H:%M:%S %z")}\n"
    post[:body] += "categories: []\n"
    post[:body] += "---\n\n\n"

    # Write file
    File.open(file, 'w') do |file|
      file.write(post[:body])
    end

    puts "Post written to #{post[:path]}/#{post[:slug]}.#{post[:ext]}"
    system ("#{ENV['EDITOR']} #{file}")
  end
end