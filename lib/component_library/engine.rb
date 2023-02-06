# frozen_string_literal: true

require "view_component/engine"
require "view_component-contrib"

module ComponentLibrary
  class Engine < ::Rails::Engine
    isolate_namespace ComponentLibrary

    config.generators { |g| g.test_framework :rspec }

    component_path = root.join("app", "components")
    config.autoload_paths << component_path
    config.view_component.preview_paths << component_path

    initializer 'component_library.autoload' do
      ActiveSupport.on_load(:view_component) do
        # Make it possible to store previews in sidecar folders
        # See https://github.com/palkan/view_component-contrib#organizing-components-or-sidecar-pattern-extended
        ViewComponent::Preview.extend ViewComponentContrib::Preview::Sidecarable
        # Enable `self.abstract_class = true` to exclude previews from the list
        ViewComponent::Preview.extend ViewComponentContrib::Preview::Abstract
      end
    end
  end
end
