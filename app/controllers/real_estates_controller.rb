class RealEstatesController < ApplicationController
  def index
    @real_estates = RealEstate.all
  end

  def new
    @real_estate = RealEstate.new
    2.times { @real_estate.nearest_stations.build }
  end

  def create
    RealEstate.create(real_estate_params)
    redirect_to real_estates_path
  end

  def show
    set_real_estate
  end

  def edit
    set_real_estate
    1.times { @real_estate.nearest_stations.build }
  end

  def update
    set_real_estate
    if @real_estate.update(real_estate_params)
      redirect_to real_estates_path
    else
      render :edit
    end
  end

  def destroy
    set_real_estate
    @real_estate.destroy
    redirect_to real_estates_path
  end
  
  private

  def real_estate_params
    params.require(:real_estate).permit(:name, :rent, :address, :age, :note,
                                        nearest_stations_attributes: [:station, :minute_to_walk, :line, :_destroy ])
  end
  
  def set_real_estate
    @real_estate = RealEstate.find(params[:id])
  end
end
