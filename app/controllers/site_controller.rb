class SiteController < ApplicationController
  before_action :authenticate_user!, :except => [:home, :aboutus, :adminprofile, :hotelprofile,:partner]
before_action :authenticate_admin!, :except => [:home, :aboutus,:contactus, :hotelprofile,:memberprofile, :bookingpage,:partner ]
before_action :authenticate_hoteladmin!, :except => [:home, :aboutus,:contactus, :memberprofile,:adminprofile, :bookingpage,:partner ]
  def home
    @hotels= Hotel.all
     @rooms =Room.all
     @avaibilities= Avaibility.all
     @bookings= Booking.all
  end


  def bookingpage
      @amount=23
  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'Rails Stripe customer',
    :currency    => 'usd'
  )

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to '/partner'

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
    @bookings=Booking.all
      @users=Booking.all
        @hotels=Booking.all
  end

  def partner
  # customer = Stripe::Customer.create(
  #   :email => params[:stripeEmail],
  #   :source  => params[:stripeToken]
  # )

  # charge = Stripe::Charge.create(
  #   :customer    => customer.id,
  #   :amount      => @amount,
  #   :description => 'Rails Stripe customer',
  #   :currency    => 'usd'
  # )

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
