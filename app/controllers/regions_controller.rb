class RegionsController < ApplicationController
  
  def index
    @region = Region.all
  end

  def show
    @region = Region.find(params[:id])
  end

  def new
    @region = Region.new
  end

  def create
    region = Region.create(region_params)
    redirect_to regions_path(region)
  end

  def edit
    @region = Region.find(params[:id])
  end

  def update
    region = Region.find(params[:id])
    region.update(region_params)

      if region.save!
        redirect_to region_path(region)
      end
  end

  def destory
    @region = Region.find(params[:id])
    @region.destory
    redirect_to region_path
  end

  private

  def region_params
    params.require(:region).permit(:name, :region)
  end
end
