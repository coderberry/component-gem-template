# frozen_string_literal: true

module ComponentLibrary
  class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true
  end
end
