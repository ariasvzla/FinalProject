class SiteController < ApplicationController
  before_action :authenticate_user!, :except => [:home, :aboutus, :adminprofile, :hotelprofile]
before_action :authenticate_admin!, :except => [:home, :aboutus,:contactus, :hotelprofile,:memberprofile ]
before_action :authenticate_hoteladmin!, :except => [:home, :aboutus,:contactus, :memberprofile,:adminprofile ]
  def home
    @hotels= Hotel.all
     @rooms =Room.all
     @avaibilities= Avaibility.all
     @bookings= Booking.all
  end


  def bookingpage
 booking = Booking.find_by_user_id(current_user.id)
 # @totalprice=params[:total1]

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

  def adminprofile
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
