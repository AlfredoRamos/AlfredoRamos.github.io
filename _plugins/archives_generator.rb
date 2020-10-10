# frozen_string_literal: true

# Modified version of the jekyll-archives plugin,
# with titles for year archives
# https://github.com/jekyll/jekyll-archives

module Jekyll
  class ArchivePageGenerator < Generator
    safe true

    # Generate archive pages
    def generate(site)
      @site = site
      @posts = site.posts
      layout = 'archive'

      if @site.layouts.key?(layout)
        # Archives
        years.each do |year, posts|
          @site.pages << ArchivePage.new(
            site,
            site.source,
            File.join('archives', year),
            year,
            'archive',
            posts
          )
        end

        # Categories
        categories.each do |category, posts|
          @site.pages << ArchivePage.new(
            site,
            site.source,
            File.join('categories', category),
            category,
            'category',
            posts
          )
        end

        # Tags
        tags.each do |tag, posts|
          @site.pages << ArchivePage.new(
            site,
            site.source,
            File.join('tags', tag),
            tag,
            'tag',
            posts
          )
        end
      end
    end

    def tags
      @site.tags
    end

    def categories
      @site.categories
    end

    def years
      date_attr_hash(@posts.docs, '%Y')
    end

    def date_attr_hash(posts, id)
      hash = Hash.new { |hsh, key| hsh[key] = [] }
      posts.each { |post| hash[post.date.strftime(id)] << post }
      hash.each_value { |list| list.sort!.reverse! }
      hash
    end
  end

  class ArchivePage < Page
    attr_accessor :posts, :type

    def initialize(site, base, dir, title, type, posts)
      @site = site
      @base = base
      @dir  = dir
      @name = 'index.html'
      @type = type
      @posts = posts

      layout = 'archive'
      description = format('Posts publised under the <strong>%<name>s</strong> %<type>s.', name: title, type: type)
      description = format('Posts published in <strong>%<year>d</strong>.', year: title) if type.eql?('archive')

      process(@name)
      read_yaml(File.join(@base, '_layouts'), format('%<layout>s.html', layout: layout))
      data['title'] = title
      data['description'] = description
      data['last_modified_at'] = Time.now.strftime('%F %T %z')
      data['content'] = ''
      data['posts'] = @posts
    end
  end
end
