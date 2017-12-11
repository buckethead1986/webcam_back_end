class Api::V1::ChannelsController < ApplicationController
  def index
    render json: Channel.includes(:users), include: ['users']
  end
end
