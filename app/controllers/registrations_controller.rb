class RegistrationsController < ApplicationController
  def index
    @user = MUser.new
    @user.m_credits.build
  end

  def create
    @user = MUser.new(user_params)
    if @user.save
      redirect_to downloads_path
    else
      render :index
    end
  end

  private

  def user_params
    params.require(:m_user).permit(:name, :email, m_credits_attributes: %i[name company number expire_on])
  end
end
