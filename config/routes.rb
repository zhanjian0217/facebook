Rails.application.routes.draw do
  
  devise_for :users
    
  devise_scope :user do
    authenticated :user do
      root 'articles#index', as: :authenticated_root
    end
    
    unauthenticated do
      root 'users/sessions#new', as: :unauthenticated_root
    end
  end

  resources :articles
  resources :profiles, only: [:show, :edit, :update]
end
