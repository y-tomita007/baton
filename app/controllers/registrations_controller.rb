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
      # REVIEW: もっといい方法があるはず
      pull_expire_on_from_params
      render :index
    end
  end

  private

  def user_params
    params.require(:m_user).permit(:name, :email, m_credits_attributes: %i[name company number expire_on])
  end

  def pull_expire_on_from_params
    @expire_on = params[:m_user][:m_credits_attributes]['0'][:expire_on]&.to_date
  end
end
