# frozen_string_literal: true

module ComponentLibrary
  class Gravatar::Component < ApplicationViewComponent
    option :email, proc(&:to_s)
    option :size, proc(&:to_i), optional: true

    def gravatar_hash
      Digest::MD5.hexdigest(email)
    end

    def gravatar_url
      base_url = "https://www.gravatar.com/avatar/#{gravatar_hash}"
      base_url += "?s=#{size}" if size && size > 0
      base_url
    end
  end
end
