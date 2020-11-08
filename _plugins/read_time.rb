# frozen_string_literal: true

# Calculates the read time from content
# @author Alfredo Ramos <alfredo.ramos@yandex.com>
# @license GPL-3.0

module Jekyll
  include Filters

  module ReadTimeFilter
    def read_time(content)
      config = @context.registers[:site].config
      word_per_minute = (config['word_per_minute'] || 180) * 1.0
      image_view_time = config['image_view_time'] || 3

      number_of_images = content.scan(%r{<img}).count
      content = strip_html(content)
      content = normalize_whitespace(content)
      read_time = number_of_words(content) / word_per_minute

      read_time += (image_view_time / 60.0) * number_of_images if number_of_images.positive?

      read_time = read_time.round
      read_time = 1 if read_time <= 0

      format('%<minutes>d min read', minutes: read_time)
    end
  end
end

Liquid::Template.register_filter(Jekyll::ReadTimeFilter)
