class UsersController < ApplicationController
  def show
  		@user = User.find(params[:id])
  		@pins = @user.pins.page(params[:page]).per_page(15)
  end
end
	# @user = User.find(params[:id])
  		# @user = User.first