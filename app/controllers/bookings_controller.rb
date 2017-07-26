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
  def show
    @room = Room.find(params[:room_id])
    @booking = @room.bookings.find(params[:id])
  end

  # GET /bookings/new
  def new
   
      @room = Room.find(params[:room_id])
      @booking = @room.bookings.build
      @booking = Booking.new
      
  end

  # GET /bookings/1/edit
  def edit
      @hotel = Hotel.find_by_hoteladmin_id(current_hoteladmin.id)
      @room = Room.find_by_hotel_id(@hotel.id)
      booking = Booking.find_by_room_id(@room.id)
  end

  # POST /bookings
  # POST /bookings.json
  def create
    @room = Room.find(params[:room_id])
    @booking =Booking.new(booking_params)
    @booking = @room.bookings.build(params.require(:booking).permit!)
    @booking = @room.bookings.build(params.require(:booking).permit(:totalcost, :start,:end, :numpeople, :room_id, :user_id, :hotel_id))
    
    respond_to do |format|
      if @booking.save
        format.html { redirect_to home_path, notice: 'Booking was successfully created.' }
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
      params.require(:booking).permit(:totalcost, :start, :end, :numpeople,:room_id,:user_id, :hotel_id)
    end
end
