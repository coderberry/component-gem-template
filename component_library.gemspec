# frozen_string_literal: true

require_relative "lib/component_library/version"

Gem::Specification.new do |spec|
  spec.name = "component_library"
  spec.version = ComponentLibrary::VERSION
  spec.authors = ["Eric Berry"]
  spec.email = ["eric@berry.sh"]
  spec.homepage = "https://github.com/coderberry/component-gem-template"
  spec.summary = "ViewComponent Library for Rails"
  spec.description = "Library of ViewComponents using Tailwind, Vite, Stimulus and Rspec"
  spec.license = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage + "/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "dry-initializer", "~> 3.1.1"
  spec.add_dependency "lookbook", "~> 1.5.1"
  spec.add_dependency "rails", ">= 6.1", "< 8"
  spec.add_dependency "view_component", "3.0.0.rc1"
  spec.add_dependency "view_component-contrib", "~> 0.1.3"
  spec.add_dependency "vite_rails", "~> 3.0.3"

  # Testing
  spec.add_development_dependency "capybara"
  spec.add_development_dependency "rspec-rails"

  # Standardize
  spec.add_development_dependency "erb_lint"
  spec.add_development_dependency "magic_frozen_string_literal"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "standard"

  # Debugging
  spec.add_development_dependency "debug", ">= 1.0"
end
