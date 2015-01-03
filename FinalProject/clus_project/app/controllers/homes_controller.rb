class HomesController < ApplicationController
  load_and_authorize_resource
  before_action :set_home, only: [:show, :edit, :update, :destroy]

  respond_to :html, :js

  def index
    @homes = Home.all
    respond_with(@homes)
  end

  def show
    respond_with(@home)
  end

  def new
    @home = Home.new
    respond_with(@home)
  end

  def edit
  end

  def create
    @home = Home.new(home_params)
    @home.save
    respond_to do |format|
      format.js
    end
    #render :action => 'crop'
    # respond_with(@home)
  end

  def update
    @home = Home.find(params[:id])
    @home.update_attributes(home_params)
    #@home.update(home_params)
    #redirect_to @home
    respond_to do |format|
      format.js
    end
  end

  def destroy
    @home.destroy
    respond_with(@home)
  end
  def verify_email
    logger.debug params[:user][:email].inspect
    status = User.find_by_email(params[:user][:email]).present?
    respond_to do |format|
      format.json {
        render :json => status
      }
    end
  end

  private
    def set_home
      @home = Home.find(params[:id])
    end

    def home_params
      params.require(:home).permit(:name, :image, :image_crop_x, :image_crop_y, :image_crop_w, :image_crop_h)
    end
end
