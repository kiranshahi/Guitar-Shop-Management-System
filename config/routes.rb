Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users, skip: :registrations 
    as :user do
      get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'    
      put 'users' => 'devise/registrations#update', :as => 'user_registration'            
    end
    
  resources :dealers
  resources :purchase_orders
  resources :customers
  resources :guitars

  resources :users
  root "guitars#index"
  
end
