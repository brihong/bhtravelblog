class ShoutoutsController < ApplicationController
  before_action :authenticate_user!

  def create
    @post = Post.find(params[:post_id])
    @post.shoutouts.create(shoutout_params.merge(user: current_user))
    redirect_to post_path(@post)
  end

  private

  def shoutout_params
    params.require(:shoutout).permit(:message)
  end
end