Rails.application.routes.draw do

  namespace :v1 do
    devise_for :users, controllers: {
      registrations: "v1/registrations"
    }
    
    resources :facts
    resources :contacts
  end

end
