class YoutubeParticipationsController < ApplicationController
  before_action :set_youtube_participation, only: %i[ show update destroy ]

  # GET /youtube_participations
  def index
    @youtube_participations = YoutubeParticipation.all

    render json: @youtube_participations
  end

  # GET /youtube_participations/1
  def show
    render json: @youtube_participation
  end

  # POST /youtube_participations
  def create
    @youtube_participation = YoutubeParticipation.new(youtube_participation_params)

    if @youtube_participation.save
      render json: @youtube_participation, status: :created, location: @youtube_participation
    else
      render json: @youtube_participation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /youtube_participations/1
  def update
    if @youtube_participation.update(youtube_participation_params)
      render json: @youtube_participation
    else
      render json: @youtube_participation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /youtube_participations/1
  def destroy
    @youtube_participation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_youtube_participation
      @youtube_participation = YoutubeParticipation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def youtube_participation_params
      params.require(:youtube_participation).permit(:unite_live_id, :user_id)
    end
end
