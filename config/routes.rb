Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root 'registrations#new'

  resources :cats, only: [:index, :show, :edit, :update]
  
  namespace :api do
  	namespace :v1 do
			resources :cats, only: [:index,:show]
		end
	end

	


  get  "/register", to: "registrations#new"
  post "/register", to: "registrations#create"

  post   "/login",  to: "login#create"
  delete "/logout", to: "login#destroy"
end
