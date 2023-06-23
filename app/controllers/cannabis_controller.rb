class CannabisController < ApplicationController
  before_action :set_cannabi, only: %i[ show update destroy ]

  # GET /cannabis
  def index
    @cannabis = Cannabi.all

    render json: @cannabis
  end

  # GET /cannabis/1
  def show
    render json: @cannabi
  end

  # POST /cannabis
  def create
    @cannabi = Cannabi.new(cannabi_params)

    if @cannabi.save
      render json: @cannabi, status: :created, location: @cannabi
    else
      render json: @cannabi.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cannabis/1
  def update
    if @cannabi.update(cannabi_params)
      render json: @cannabi
    else
      render json: @cannabi.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cannabis/1
  def destroy
    @cannabi.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cannabi
      @cannabi = Cannabi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cannabi_params
      params.require(:cannabi).permit(:strain, :medical_use, :health_benefit)
    end
end
