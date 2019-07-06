Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :pledges
  resources :users do 
    resources :pledges, :controller => :user_pledges
  end
end
