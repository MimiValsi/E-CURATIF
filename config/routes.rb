Rails.application.routes.draw do
  resources :archiveds

  resources :sources do
    resources :infos
  end

  root 'sources#index'
end
