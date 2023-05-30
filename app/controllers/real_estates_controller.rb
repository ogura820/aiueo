class RealEstatesController < ApplicationController
  def index
    @real_estates = RealEstate.all
  end

  def new
    @real_estate = RealEstate.new
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
  end

  def update
    set_real_estate
    if @real_estate.update(real_estate_params)
      redirect_to real_estates_path, notice: "ブログを編集しました！"
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
    params.require(:real_estate).permit(:name, :rent, :address, :age, :note)
  end
  
  def set_real_estate
    @real_estate = RealEstate.find(params[:id])
  end
end
