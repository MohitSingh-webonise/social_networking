class SininController < ApplicationController
  before_filter :authenticate_member!
  def validate_user
    member_signed_in? ? redirect_to home_controller : @message= "Wrong credentials.Try Again"
  end
end