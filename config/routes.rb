Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  resources :lectures do
    resources :chapters
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
