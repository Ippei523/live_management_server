class UniteLiveInfosController < ApplicationController
  before_action :set_unite_live_info, only: %i[ show update destroy ]

  # GET /unite_live_infos
  def index
    @unite_live_infos = UniteLiveInfo.all

    render json: @unite_live_infos
  end

  # GET /unite_live_infos/1
  def show
    render json: @unite_live_info
  end

  # POST /unite_live_infos
  def create
    @unite_live_info = UniteLiveInfo.new(unite_live_info_params)

    if @unite_live_info.save
      render json: @unite_live_info, status: :created, location: @unite_live_info
    else
      render json: @unite_live_info.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /unite_live_infos/1
  def update
    if @unite_live_info.update(unite_live_info_params)
      render json: @unite_live_info
    else
      render json: @unite_live_info.errors, status: :unprocessable_entity
    end
  end

  # DELETE /unite_live_infos/1
  def destroy
    @unite_live_info.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unite_live_info
      @unite_live_info = UniteLiveInfo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def unite_live_info_params
      params.require(:unite_live_info).permit(:title)
    end
end
