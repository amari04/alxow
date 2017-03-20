class BeddingsController < ApplicationController
  before_action :set_bedding, only: [:show, :edit, :update, :destroy]

  # GET /beddings
  # GET /beddings.json
  def index
    @beddings = Bedding.all
  end

  # GET /beddings/1
  # GET /beddings/1.json
  def show
  end

  # GET /beddings/new
  def new
    @bedding = Bedding.new
  end

  # GET /beddings/1/edit
  def edit
  end

  # POST /beddings
  # POST /beddings.json
  def create
    @bedding = Bedding.new(bedding_params)

    respond_to do |format|
      if @bedding.save
        format.html { redirect_to @bedding, notice: 'Bedding was successfully created.' }
        format.json { render :show, status: :created, location: @bedding }
      else
        format.html { render :new }
        format.json { render json: @bedding.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beddings/1
  # PATCH/PUT /beddings/1.json
  def update
    respond_to do |format|
      if @bedding.update(bedding_params)
        format.html { redirect_to @bedding, notice: 'Bedding was successfully updated.' }
        format.json { render :show, status: :ok, location: @bedding }
      else
        format.html { render :edit }
        format.json { render json: @bedding.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beddings/1
  # DELETE /beddings/1.json
  def destroy
    @bedding.destroy
    respond_to do |format|
      format.html { redirect_to beddings_url, notice: 'Bedding was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bedding
      @bedding = Bedding.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bedding_params
      params.require(:bedding).permit(:person_id, :count, :kind)
    end
end
