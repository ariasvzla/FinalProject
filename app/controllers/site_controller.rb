class SiteController < ApplicationController
before_action :authenticate_user!, :except => [:home, :aboutus, :contactus, :airlineprofile, :adminpage, :hotelprofile, :partner]
 before_action :authenticate_hoteladmin!, :except => [:home, :aboutus, :contactus, :bookingpage, :airlineprofile, :adminpage, :partner, :memberprofile]
 before_action :authenticate_flightadmin!, :except => [:home, :aboutus, :contactus, :bookingpage, :adminpage, :hotelprofile,:partner, :memberprofile]
  def home
  end


  def adminprofile
  end

  def bookingpage
    @hotel= Hotels.all
  end

  def aboutus
  end

  def contactus
  end

  def hotelprofile
      @hotel = Hotel.find_by_hoteladmin_id(current_hoteladmin.id)
       @room = Room.find_by_hotel_id(@hotel.id)
   
  end


  def airlineprofile
  end

  def adminpage
  end
  def partner
  end
  def memberprofile
         @profile = Profile.find_by_user_id(current_user.id)
 
    @users= User.all
  end

end
