# frozen_string_literal: true

module ComponentLibrary
  class Gravatar::Preview < ApplicationViewComponentPreview
    # You can specify the container class for the default template
    # self.container_class = "w-1/2 border border-gray-300"

    def default
      render(Component.new(email: "eric@berry.sh"))
    end

    def with_the_size_option
      render(Component.new(email: "eric@berry.sh", size: 80))
    end
  end
end
