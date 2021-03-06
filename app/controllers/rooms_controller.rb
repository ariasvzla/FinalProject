class RoomsController < ApplicationController
  before_action :authenticate_hoteladmin!
  before_action :set_room, only: [:show, :edit, :update, :destroy]

  # GET /rooms
  # GET /rooms.json
  def index
    @rooms = Room.all
  end

  # GET /rooms/1
  # GET /rooms/1.json
  def show

     @room = Room.find(params[:room_id])
        profile = Profile.find_by_user_id(current_user.id)
     if @room.roomtype== "Single"
      profile.update_attributes(:rewardp => 0)
    end
  end

  # GET /rooms/new
  def new


    @hotel = Hotel.find_by_hoteladmin_id(current_hoteladmin.id)
    if @hotel.nil?
        redirect_to hotelprofile_path, notice: 'Add a hotel please.' 
      else
    @room = Room.find_by_hotel_id(@hotel.id)
    @room = Room.new
end

  end

  # GET /rooms/1/edit
  def edit
  end

  # POST /rooms
  # POST /rooms.json
  def create
    @room = Room.new(room_params)

    respond_to do |format|
      if @room.save
        format.html { redirect_to hotelprofile_path, notice: 'Room was successfully created.' }
        format.json { render :show, status: :created, location: @room }
      else
        format.html { render :new }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rooms/1
  # PATCH/PUT /rooms/1.json
  def update
    respond_to do |format|
      if @room.update(room_params)
        format.html { redirect_to hotelprofile_path, notice: 'Room was successfully updated.' }
        format.json { render :show, status: :ok, location: @room }
      else
        format.html { render :edit }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rooms/1
  # DELETE /rooms/1.json
  def destroy
    @room.destroy
    respond_to do |format|
      format.html { redirect_to hotelprofile_path, notice: 'Room was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room
      @room = Room.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def room_params
      params.require(:room).permit(:roomtype,:image, :romnum, :pricepn,:hotel_id,:quantity)
    end
end
