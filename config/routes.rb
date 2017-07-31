Rails.application.routes.draw do
  resources :setvs
 devise_for  :flightadmins, controllers: {
        registrations: 'sessions/registrations',
        sessions: 'sessions/sessions'
     }  
    devise_for :users, controllers: {
       registrations: 'users/registrations',
        sessions: 'users/sessions'
     }  
       devise_for :hoteladmins, controllers: {
         registrations: 'hoteladmins/registrations',
        sessions: 'hoteladmins/sessions'
     }  
          devise_for :admins, controllers: {
        registrations: 'admins/registrations',
        sessions: 'admins/sessions'
     }  

  resources :rates
  resources :timelines
      resources :profiles
     resources :avaibilities
     resources :bookings
     resources :bookingpage
    resources :hotels do
     resources :rooms
   end

  resources :rooms do
    resources :avaibilities 
    resources :bookings
  end


resources :booking
  resources :places
  resources :flights



     
 
    root to: 'site#home'

  get '/aboutus' => 'site#aboutus'
  get '/contactus' => 'site#contactus'
  get '/home' => 'site#home'
  get '/hotelprofile' => 'site#hotelprofile'
  get '/airlineprofile' => 'site#airlineprofile'
  get '/adminpage' => 'site#adminprofile'
  get '/userprofile' => 'profiles#userprofile'
  get '/memberprofile' => 'site#memberprofile'
  get '/partner' => 'site#partner'
  get '/booking' => 'site#bookingpage'
 

   
   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
