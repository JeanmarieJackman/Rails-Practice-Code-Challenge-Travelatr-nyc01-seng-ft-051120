class DestinationsController < ApplicationController

  def show
    @destination = Destination.find(params[:id])
    @post = Post.all
    
  end

end
