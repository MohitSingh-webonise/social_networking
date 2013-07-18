class PostsController < ApplicationController
  def create
    @post= current_user.posts.build(post_params)

    if @post.save
      redirect_to home_welcome_path
    else
      @message="Error in your post."
    end
  end

  def post_params
    params.require(:post).permit(:description)
  end
end