Rails.application.routes.draw do
  resources :avaibilities
  resources :transactions
  resources :bookings
  resources :rooms

  resources :places
  resources :flights
  resources :hotels
     devise_for :users, :admins, :hoteladmins, :flightadmins, controllers: {
        registrations: 'sessions/registrations',
        sessions: 'sessions/sessions'
     }  
    root to: 'site#home'
  resources :profiles

  get '/booking' => 'site#bookingpage'
  get '/aboutus' => 'site#aboutus'
  get '/contactus' => 'site#contactus'
  get '/home' => 'site#home'
  get '/hotelprofile' => 'site#hotelprofile'
  get '/airlineprofile' => 'site#airlineprofile'
  get '/adminpage' => 'site#adminpage'
  get '/userprofile' => 'profiles#userprofile'
  get '/memberprofile' => 'site#memberprofile'
  get '/partner' => 'site#partner'

  
   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
