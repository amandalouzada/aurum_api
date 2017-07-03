class QuimicaPerformancesController < ApplicationController
  before_action :set_quimica_performance, only: [:show, :update, :destroy]

  # GET /quimica_performances
  def index
    @quimica_performances = QuimicaPerformance.all

    render json: @quimica_performances
  end

  # GET /quimica_performances/1
  def show
    render json: @quimica_performance
  end

  # POST /quimica_performances
  def create
    @quimica_performance = QuimicaPerformance.new(quimica_performance_params)

    if @quimica_performance.save
      render json: @quimica_performance, status: :created, location: @quimica_performance
    else
      render json: @quimica_performance.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /quimica_performances/1
  def update
    if @quimica_performance.update(quimica_performance_params)
      render json: @quimica_performance
    else
      render json: @quimica_performance.errors, status: :unprocessable_entity
    end
  end

  # DELETE /quimica_performances/1
  def destroy
    @quimica_performance.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quimica_performance
      @quimica_performance = QuimicaPerformance.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def quimica_performance_params
      params.require(:quimica_performance).permit(:nome)
    end
end
