Rails.application.routes.draw do
  # resources :tweets

  devise_for :users

  resources :users, :only => [:index, :show]

  devise_scope :user do
    authenticated :user do
      root 'users#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

end