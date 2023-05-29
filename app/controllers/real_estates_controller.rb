class RealEstatesController < ApplicationController
  def index
  end

  def new
    @real_estates = RealEstate.new
  end

  def create
    RealEstate.create(real_estate_params)
    redirect_to real_estates_path
  end

  private

  def real_estate_params
    params.require(:real_estate).permit(:name, :rent, :address, :age, :note)
  end
  
end
