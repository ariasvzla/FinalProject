Rails.application.routes.draw do

  resources :flights
  resources :hotels
     devise_for :hoteladmins
     devise_for :flightadmins
    
     devise_for :users, :admins, controllers: {
        registrations: 'sessions/registrations',
        sessions: 'sessions/sessions'
     }  
     root to: 'site#home'
     resources :profiles

  get '/adminprofile' => 'site#adminprofile'

  get '/booking' => 'site#bookingpage'

  get '/aboutus' => 'site#aboutus'

  get '/contactus' => 'site#contactus'

  get '/home' => 'site#home'

  get '/userprofile' => 'profiles#userprofile'

 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
