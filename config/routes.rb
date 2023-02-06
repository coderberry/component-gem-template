# frozen_string_literal: true

ComponentLibrary::Engine.routes.draw do
  mount Lookbook::Engine, at: "/"
end
