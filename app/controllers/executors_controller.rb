class ExecutorsController < ApplicationController
  before_action :set_executor, only: [:show, :edit, :update, :destroy]

  # GET /executors
  # GET /executors.json
  def index
    @executors = Executor.all
  end

  # GET /executors/1
  # GET /executors/1.json
  def show
  end

  # GET /executors/new
  def new
    @executor = Executor.new
  end

  # GET /executors/1/edit
  def edit
  end

  # POST /executors
  # POST /executors.json
  def create
    @executor = Executor.new(executor_params)

    respond_to do |format|
      if @executor.save
        format.html { redirect_to @executor, notice: 'Успешно добавлено' }
        format.json { render :show, status: :created, location: @executor }
      else
        format.html { render :new }
        format.json { render json: @executor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /executors/1
  # PATCH/PUT /executors/1.json
  def update
    respond_to do |format|
      if @executor.update(executor_params)
        format.html { redirect_to @executor, notice: 'Успешно отредактировано' }
        format.json { render :show, status: :ok, location: @executor }
      else
        format.html { render :edit }
        format.json { render json: @executor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /executors/1
  # DELETE /executors/1.json
  def destroy
    @executor.destroy
    respond_to do |format|
      format.html { redirect_to executors_url, notice: 'Успешно удалено' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_executor
      @executor = Executor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def executor_params
      params.require(:executor).permit(:request_id, :employee_id, :executortype)
    end
end
