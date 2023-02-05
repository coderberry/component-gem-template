# frozen_string_literal: true

module ComponentLibrary
  class Engine < ::Rails::Engine
    isolate_namespace ComponentLibrary

    config.generators { |g| g.test_framework :rspec }
  end
end
