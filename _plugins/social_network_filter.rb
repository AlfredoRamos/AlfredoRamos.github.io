# frozen_string_literal: true

module Jekyll
  module SocialNetworkFilter
    def social_network_url(user, type = nil)
      return user if type.nil? || type.to_s.empty?

      network_url(user, type)
    end

    def social_network_title(type)
      return '' if type.nil? || type.to_s.empty?

      case type
      when 'github'
        'GitHub'
      when 'gitlab'
        'GitLab'
      else
        type.capitalize
      end
    end

    def social_network_icon(type)
      return '' if type.nil? || type.to_s.empty?

      case type
      when 'github'
        'brandico:github'
      when 'gitlab'
        'cib:gitlab'
      when 'telegram'
        'cib:telegram-plane'
      when 'twitter'
        'brandico:twitter-bird'
      when 'crowdin'
        'simple-icons:crowdin'
      when 'discord'
        'cib:discord'
      else
        'websymbol:link'
      end
    end

    private

    def network_url(user, type)
      user = user.strip
      type = type.strip

      return '' unless user.length.positive? && type.length.positive?

      case type
      when 'github'
        format('https://github.com/%<user>s', user: user)
      when 'gitlab'
        format('https://gitlab.com/%<user>s', user: user)
      when 'telegram'
        format('https://telegram.me/%<user>s', user: user)
      when 'twitter'
        format('https://twitter.com/%<user>s', user: user)
      when 'crowdin'
        format('https://crowdin.com/profile/%<user>s', user: user)
      else
        user
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::SocialNetworkFilter)
