Rails.application.routes.draw do
 devise_for :users, :admins, :hoteladmins, :flightadmins, controllers: {
        registrations: 'sessions/registrations',
        sessions: 'sessions/sessions'
     }  
    

  resources :rates
  resources :timelines
      resources :profiles
     resources :avaibilities
     resources :bookings
     
    resources :hotels do
     resources :rooms
   end

  resources :rooms do
    resources :avaibilities 
    resources :bookings
  end

    resources :transactions do 
  resources :bookings
end

  resources :places
  resources :flights



     
 
    root to: 'site#home'
  get '/booking' => 'site#bookingpage'
  get '/aboutus' => 'site#aboutus'
  get '/contactus' => 'site#contactus'
  get '/home' => 'site#home'
  get '/hotelprofile' => 'site#hotelprofile'
  get '/airlineprofile' => 'site#airlineprofile'
  get '/adminpage' => 'site#adminprofile'
  get '/userprofile' => 'profiles#userprofile'
  get '/memberprofile' => 'site#memberprofile'
  get '/partner' => 'site#partner'
  get '/bookingpage' => 'site#bookingpage'

   
   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
