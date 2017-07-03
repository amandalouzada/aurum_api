class FerramentaController < ApplicationController
  before_action :set_ferramentum, only: [:show, :update, :destroy]

  # GET /ferramenta
  def index
    @ferramenta = Ferramentum.all

    render json: @ferramenta
  end

  # GET /ferramenta/1
  def show
    render json: @ferramentum
  end

  # POST /ferramenta
  def create
    @ferramentum = Ferramentum.new(ferramentum_params)

    if @ferramentum.save
      render json: @ferramentum, status: :created, location: @ferramentum
    else
      render json: @ferramentum.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ferramenta/1
  def update
    if @ferramentum.update(ferramentum_params)
      render json: @ferramentum
    else
      render json: @ferramentum.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ferramenta/1
  def destroy
    @ferramentum.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ferramentum
      @ferramentum = Ferramentum.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ferramentum_params
      params.require(:ferramentum).permit(:tipo)
    end
end
