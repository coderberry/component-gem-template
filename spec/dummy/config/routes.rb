# frozen_string_literal: true

Rails.application.routes.draw do
  mount ComponentLibrary::Engine => "/component_library"
end
