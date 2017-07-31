class SetvsController < ApplicationController
  before_action :set_setv, only: [:show, :edit, :update, :destroy]

  # GET /setvs
  # GET /setvs.json
  def index
    @setvs = Setv.all
  end

  # GET /setvs/1
  # GET /setvs/1.json
  def show
  end

  # GET /setvs/new
  def new
    @setv = Setv.new
  end

  # GET /setvs/1/edit
  def edit
  end

  # POST /setvs
  # POST /setvs.json
  def create
    @setv = Setv.new(setv_params)

    respond_to do |format|
      if @setv.save
        format.html { redirect_to @setv, notice: 'Setv was successfully created.' }
        format.json { render :show, status: :created, location: @setv }
      else
        format.html { render :new }
        format.json { render json: @setv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /setvs/1
  # PATCH/PUT /setvs/1.json
  def update
    respond_to do |format|
      if @setv.update(setv_params)
        format.html { redirect_to adminpage_path, notice: 'Setv was successfully updated.' }
        format.json { render :show, status: :ok, location: @setv }
      else
        format.html { render :edit }
        format.json { render json: @setv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /setvs/1
  # DELETE /setvs/1.json
  def destroy
    @setv.destroy
    respond_to do |format|
      format.html { redirect_to setvs_url, notice: 'Setv was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_setv
      @setv = Setv.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def setv_params
      params.require(:setv).permit(:set)
    end
end
