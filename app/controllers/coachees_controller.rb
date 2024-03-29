class CoacheesController < ApplicationController
  # skip_before_action :authenticate_request
  before_action :set_coachee, only: [:show, :update, :destroy]

  # GET /coachees
  def index
    @coachees = Coachee.where(usuario_id: @current_usuario.id, arquivado: false).order('nome asc')
    render json: @coachees
  end

  # GET /coachees/1
  def show
    render json: @coachee
  end

  # POST /coachees
  def create
    @coachee = Coachee.new(coachee_params)
    @coachee.usuario = @current_usuario

    if @coachee.save
      render json: @coachee, status: :created, location: @coachee
    else
      render json: @coachee.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /coachees/1
  def update
    if @coachee.update(coachee_params)
      render json: @coachee
    else
      render json: @coachee.errors, status: :unprocessable_entity
    end
  end

  # DELETE /coachees/1
  def destroy
    @coachee.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coachee
      @coachee = Coachee.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def coachee_params
      params.require(:coachee).permit(:nome, :telefone, :idade, :sexo, :objetivo, :arquivado)
    end
end
