class SiteController < ApplicationController
before_action :authenticate_user!, :except => [:home, :aboutus, :contactus, :airlineprofile, :hotelprofile, :partner]
 before_action :authenticate_hoteladmin!, :except => [:home, :aboutus, :contactus, :bookingpage, :airlineprofile, :adminpage, :partner, :memberprofile]
 before_action :authenticate_flightadmin!, :except => [:home, :aboutus, :contactus, :bookingpage, :adminpage, :hotelprofile,:partner, :memberprofile]
  def home
    @hotels= Hotel.all
     @rooms =Room.all
     @avaibilities= Avaibility.all
  end


  def bookingpage
    @hotel = Hotel.find(params[:hotel_id])
    @booking = @room.bookings.find(params[:id])
  end

  def aboutus
  end

  def contactus
  end

  def hotelprofile
  @hotels=Hotel.all
  @rooms =Room.all
  @avaibilities= Avaibility.all
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
