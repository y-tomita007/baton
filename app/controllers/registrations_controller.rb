class RegistrationsController < ApplicationController
  def index
    @user = MUser.new
  end

  def create
    # @download = Download.new(download_params)
    #
    # respond_to do |format|
    #   if @download.save
    #     format.html { redirect_to @download, notice: 'Download was successfully created.' }
    #     format.json { render :show, status: :created, location: @download }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @download.errors, status: :unprocessable_entity }
    #   end
    # end
  end
end
