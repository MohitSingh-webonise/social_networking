class  HomeController < ApplicationController
  before_filter :check_user
  def welcome
    @article = Post.new
    @post =User.find_by_id(current_user.id).posts
  end

  def search_friend
    @friends =User.all
  end

  def check_user
    if current_user.nil?
      redirect_to  new_user_session_path
    end
  end
end
