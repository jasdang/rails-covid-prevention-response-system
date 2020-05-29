Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/register', to: 'citizens#register'
  get '/signin', to: 'citizens#signin'
  post '/signin', to: 'citizens#authenticate'

  # post '/citizens', to: 'citizens#create'
  # get '/citizens/:id/edit', to: 'citizens#edit'
  # put '/citizens/:id', to: 'citizens#update'
  # get '/citizens/:id/appointments/new', to: 'appointments#new'
  # post 'citizens/:id/appointments', to: 'appointments#create'
  resources :citizens, only: [:create, :edit, :update] do
    resources :appointments, only: [:new, :create]
  end

  resources :clinics, except: [:destroy]
end
