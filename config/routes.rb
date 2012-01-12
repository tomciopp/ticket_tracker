TicketTracker::Application.routes.draw do

  devise_for :users, :controllers => { :registrations => "registrations" }
  get 'awaiting_confirmation',
    :to => "users#confirmation",
    :as => 'confirm_user'

  root :to => "Projects#index"
  
  resources :projects do 
    resources :tickets
  end
  
  namespace :admin do 
    root :to => "base#index"
    resources :users
  end
  
end
