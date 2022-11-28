class YoutubeParticipantInfosController < ApplicationController
  before_action :set_youtube_participant_info, only: %i[ show update destroy ]

  # GET /youtube_participant_infos
  def index
    @youtube_participant_infos = YoutubeParticipantInfo.all

    render json: @youtube_participant_infos
  end

  # GET /youtube_participant_infos/1
  def show
    render json: @youtube_participant_info
  end

  # POST /youtube_participant_infos
  def create
    @youtube_participant_info = YoutubeParticipantInfo.new(youtube_participant_info_params)

    if @youtube_participant_info.save
      render json: @youtube_participant_info, status: :created, location: @youtube_participant_info
    else
      render json: @youtube_participant_info.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /youtube_participant_infos/1
  def update
    if @youtube_participant_info.update(youtube_participant_info_params)
      render json: @youtube_participant_info
    else
      render json: @youtube_participant_info.errors, status: :unprocessable_entity
    end
  end

  # DELETE /youtube_participant_infos/1
  def destroy
    @youtube_participant_info.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_youtube_participant_info
      @youtube_participant_info = YoutubeParticipantInfo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def youtube_participant_info_params
      params.require(:youtube_participant_info).permit(:youtube_name, :traier_name, :participant_count, :memo)
    end
end
