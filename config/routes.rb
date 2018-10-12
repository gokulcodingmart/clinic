Rails.application.routes.draw do
  get 'home/index'
  get 'home/search'
  post "home/save_booking_details" => "home#save_booking_details"
  resource :home
  devise_for :users
  devise_scope :user do  
	   get '/users/sign_out' => 'devise/sessions#destroy'     
	end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

   root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
