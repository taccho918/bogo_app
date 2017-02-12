class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = current_user.posts.all
  end
  
  def post_params
      params.require(:post).permit(:content, :user_id)
  end
end
