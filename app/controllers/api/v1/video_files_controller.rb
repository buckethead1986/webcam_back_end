class Api::V1::VideoFilesController < ApplicationController
  def index
    render json: VideoFile.includes(:channel, :user), include: ['channel', 'user']
  end

  def create
    @videoFile = VideoFile.create(video_params)
  end

  private

  def video_params
    params.require(:video_file).permit(:user_id, :channel_id, :image_src)
  end
end
