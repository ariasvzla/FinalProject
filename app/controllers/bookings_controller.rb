class BookingsController < ApplicationController
  before_action :authenticate_user!
    before_action :set_booking, only: [:show, :edit, :update, :destroy]

  # GET /bookings
  # GET /bookings.json
  def index
   @room = Room.find(params[:room_id])
   @bookings = @room.bookings
  end

  # GET /bookings/1
  # GET /bookings/1.json
   # GET /bookings/new
  def new
   
      @room = Room.find(params[:room_id])
      @booking = @room.bookings.build
      @booking = Booking.new
  
  end
  def show
   @bookings = Booking.all
   @avaibilities =Avaibility.all
   @hotels =Hotel.all
    @room = Room.find(params[:room_id])
    @booking = @room.bookings.find(params[:id])


  @amount = 500
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
  redirect_to room_booking_path(@room,@booking)
  end



 

  # GET /bookings/1/edit
  def edit

      # @hotel = Hotel.find_by_hoteladmin_id(current_hoteladmin.id)
       @hotels = Hotel.all
      booking = Booking.find_by_room_id(@room)
  end

  # POST /bookings
  # POST /bookings.json
  def create
    @room = Room.find(params[:room_id])
    @booking =Booking.new(booking_params)
    @booking = @room.bookings.build(params.require(:booking).permit!)
    @booking = @room.bookings.build(params.require(:booking).permit(:stdate,:endate,:totalcost, :start,:end, :numpeople, :room_id, :user_id, :hotel_id, :rewardp))
    
    respond_to do |format|
      if @booking.save
        format.html { redirect_to room_booking_path(@room,@booking), notice: 'Booking was successfully created.' }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookings/1
  # PATCH/PUT /bookings/1.json
  def update
      @room = Room.find(params[:room_id])
       @booking = Booking.find(params[:id])
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to home_path, notice: 'Booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @booking }
      else
        format.html { render :edit }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookings/1
  # DELETE /bookings/1.json
  def destroy
      @room = Room.find(params[:room_id])
       @booking = Booking.find(params[:id])
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to bookings_url, notice: 'Booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booking_params
      params.require(:booking).permit(:stdate,:totalcost, :endate,:start, :end, :numpeople,:room_id,:user_id, :hotel_id, :rewardp)
    end
end
