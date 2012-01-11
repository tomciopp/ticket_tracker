TicketTracker::Application.routes.draw do

  devise_for :users

  root :to => "Projects#index"
  
  resources :projects do 
    resources :tickets
  end
  
  namespace :admin do 
    resources :users
  end
  
end
