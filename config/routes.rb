# frozen_string_literal: true

Rails.application.routes.draw do
  resources :lists, only: %i[index show new create destroy] do
    resources :bookmarks, only: %i[new create destroy]
  end
  resources :bookmarks, only: [:destroy]
end
