class SiteController < ApplicationController
before_action :authenticate_user!, :except => [:home, :aboutus, :contactus, :airlineprofile, :hotelprofile, :partner]
 before_action :authenticate_hoteladmin!, :except => [:home, :aboutus, :contactus, :bookingpage, :airlineprofile, :adminpage, :partner, :memberprofile]
 before_action :authenticate_flightadmin!, :except => [:home, :aboutus, :contactus, :bookingpage, :adminpage, :hotelprofile,:partner, :memberprofile]
  def home
    @hotels= Hotel.all
     @rooms =Room.all
     @avaibilities= Avaibility.all
     @bookings= Booking.all
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
  @bookings= Booking.all
  end
  def airlineprofile
  end

  def adminpage
  end

  def partner
  end

  def memberprofile
    @hotels= Hotel.all
     @rooms =Room.all
     @avaibilities= Avaibility.all
    @profile = Profile.find_by_user_id(current_user.id)
      @hotels=Hotel.all
    @users= User.all
    

    if params[:search] 

    @hotels = Hotel.search(params[:search]).order("created_at DESC")
  else
    @hotels = Hotel.all.order("created_at DESC")
  end


  #  if params[:search2]
  #   @rooms = Room.search(params[:search2]).order("created_at DESC")
  # else
  #   @rooms = Room.all.order("created_at DESC")
  # end

  #  if params[:search2]
  #   @avaibilities = Avaibility.search(params[:search2]).order("created_at DESC")
  # else
  #   @avaibilities = Avaibility.all.order("created_at DESC")
  # end
  end

end
