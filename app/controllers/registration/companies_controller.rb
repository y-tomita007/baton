class Registration::CompaniesController < ApplicationController
  def new
    @company = MCompany.new
    @company.m_credits.build
  end

  def create
    @company = MCompany.new company_params
    if @company.save
      redirect_to registration_installer_path
    else
      # REVIEW: もっといい方法があるはず
      pull_expire_on_from_params
      render :index
    end
  end

  private

  def company_params
    params.require(:m_company).permit(
      :name, :email, :tel, :postal_nummber, :address,
      :personnel, :personnel_department, :personnel_position,
      m_credits_attributes: %i[name company number expire_on]
    )
  end

  def pull_expire_on_from_params
    @expire_on = params[:m_company][:m_credits_attributes]['0'][:expire_on]&.to_date
  end
end
