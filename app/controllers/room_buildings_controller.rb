class RoomBuildingsController < ApplicationController
  before_action :set_room_building, only: [:show, :edit, :update, :destroy]

  # GET /room_buildings
  # GET /room_buildings.json
  def index
    @room_buildings = RoomBuilding.all
  end

  # GET /room_buildings/1
  # GET /room_buildings/1.json
  def show
  end

  # GET /room_buildings/new
  def new
    @room_building = RoomBuilding.new
  end

  # GET /room_buildings/1/edit
  def edit
  end

  # POST /room_buildings
  # POST /room_buildings.json
  def create
    @room_building = RoomBuilding.new(room_building_params)

    respond_to do |format|
      if @room_building.save
        format.html { redirect_to @room_building, notice: 'Успешно добавлено' }
        format.json { render :show, status: :created, location: @room_building }
      else
        format.html { render :new }
        format.json { render json: @room_building.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /room_buildings/1
  # PATCH/PUT /room_buildings/1.json
  def update
    respond_to do |format|
      if @room_building.update(room_building_params)
        format.html { redirect_to @room_building, notice: 'Успешно отредактировано' }
        format.json { render :show, status: :ok, location: @room_building }
      else
        format.html { render :edit }
        format.json { render json: @room_building.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /room_buildings/1
  # DELETE /room_buildings/1.json
  def destroy
    @room_building.destroy
    respond_to do |format|
      format.html { redirect_to room_buildings_url, notice: 'Успешно удалено' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room_building
      @room_building = RoomBuilding.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def room_building_params
      params.require(:room_building).permit(:room_id, :building_id, :floor, :attribute)
    end
end
