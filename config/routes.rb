Rails.application.routes.draw do
  get 'jobs/index'
  get 'jobs/new'
  get 'jobs/edit'
  get 'jobs/show'
  get 'boats/index'
  get 'boats/new'
  get 'boats/edit'
  get 'boats/show'
  devise_for :users, :controllers => {:registrations => "registrations"}

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end

  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
  end

  root 'schedules#index'
  resources :schedules
  resources :boats
  resources :jobs
end
