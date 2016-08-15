Rails.application.routes.draw do
  root 'supports#index'
  resources :supports
  get '/progress_change/:id' => 'supports#progress_change', as: :progress_change
  get '/search' => 'supports#search', as: :search
end
