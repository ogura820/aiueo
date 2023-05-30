class NearestStationsController < ApplicationController
  def index
    @neareststations = NearestStation.all
  end

  def new
    @nearest_station = NearestStation.new
  end

  def create
    NearestStation.create(nearest_station_params)
  end

  private

  def nearest_station_params
    params.require(:nearest_station).permit(:line, :station, :minute_to_walk)
  end
  

end
