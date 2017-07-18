class AvaibilitiesController < ApplicationController
  before_action :set_avaibility, only: [:show, :edit, :update, :destroy]

  # GET /avaibilities
  # GET /avaibilities.json
  def index
    @avaibilities = Avaibility.all
  end

  # GET /avaibilities/1
  # GET /avaibilities/1.json
  def show
  end

  # GET /avaibilities/new
  def new
     room = Room.find_by_hotel_id(current_hoteladmin.id)
    @avaibility = Avaibility.new
  end

  # GET /avaibilities/1/edit
  def edit
  end

  # POST /avaibilities
  # POST /avaibilities.json
  def create
    @avaibility = Avaibility.new(avaibility_params)

    respond_to do |format|
      if @avaibility.save
        format.html { redirect_to @avaibility, notice: 'Avaibility was successfully created.' }
        format.json { render :show, status: :created, location: @avaibility }
      else
        format.html { render :new }
        format.json { render json: @avaibility.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /avaibilities/1
  # PATCH/PUT /avaibilities/1.json
  def update
    respond_to do |format|
      if @avaibility.update(avaibility_params)
        format.html { redirect_to @avaibility, notice: 'Avaibility was successfully updated.' }
        format.json { render :show, status: :ok, location: @avaibility }
      else
        format.html { render :edit }
        format.json { render json: @avaibility.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /avaibilities/1
  # DELETE /avaibilities/1.json
  def destroy
    @avaibility.destroy
    respond_to do |format|
      format.html { redirect_to avaibilities_url, notice: 'Avaibility was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_avaibility
      @avaibility = Avaibility.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def avaibility_params
      params.require(:avaibility).permit(:datefrom, :dateto, :pricepn, :available, :room_id)
    end
end