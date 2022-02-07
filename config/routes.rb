Rails.application.routes.draw do
  resources :books
  devise_for :users
  
   root "books#index"

   devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end
end
