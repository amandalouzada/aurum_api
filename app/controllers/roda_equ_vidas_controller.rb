class RodaEquVidasController < ApplicationController
  before_action :set_roda_equ_vida, only: [:show, :update, :destroy]

  # GET /roda_equ_vidas
  def index
    @roda_equ_vidas = RodaEquVida.all

    render json: @roda_equ_vidas
  end

  # GET /roda_equ_vidas/1
  def show
    render json: @roda_equ_vida
  end

  # POST /roda_equ_vidas
  def create
    @roda_equ_vida = RodaEquVida.new(roda_equ_vida_params)

    if @roda_equ_vida.save
      render json: @roda_equ_vida, status: :created, location: @roda_equ_vida
    else
      render json: @roda_equ_vida.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /roda_equ_vidas/1
  def update
    if @roda_equ_vida.update(roda_equ_vida_params)
      render json: @roda_equ_vida
    else
      render json: @roda_equ_vida.errors, status: :unprocessable_entity
    end
  end

  # DELETE /roda_equ_vidas/1
  def destroy
    @roda_equ_vida.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roda_equ_vida
      @roda_equ_vida = RodaEquVida.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def roda_equ_vida_params
      params.require(:roda_equ_vida).permit(:saude, :deseIntelectual, :equiEmocional, :realizacaoProposito, :recursosFinanceiros, :contribuicaoSocial, :familia, :deseAmoroso, :vidaSocial, :hobbiesDiversoes, :plenitudeFelicidade, :espiritualidade)
    end
end
