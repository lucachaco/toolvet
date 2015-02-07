class ServicesController < ApplicationController

  def index
    @services=Service.all
  end

  def table
  end

  def new
    @service=Service.new
  end

  def create

  end

  def edit
    @service=Service.find(params[:id])
  end

  def update
    service = Service.find(params[:id])
    service.update(user_params)
  end

  def user_params
    params.require(:service).permit(:name, :description, :price, :estimated_minutes)
  end

  def destroy
  end
end
