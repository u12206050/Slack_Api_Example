require "#{Rails.root}/lib/api_wrapper.rb"

class SessionsController < ApplicationController
  def index
    @data = ApiWrapper.listchannels()


  end

  def create
    @channel = params["channel"]
    @msg = params["message"]
    ApiWrapper.sendmsg(@channel, @msg)
  end


  def new 
   @channel = params[:channel]
   @channel_id = params[:id]
  end
end
