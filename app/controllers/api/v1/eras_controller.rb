class Api::V1::ErasController < ApplicationController

  def index
    ## in fetch request when getting this action we want it to show all the eras
     @eras = Era.all
    render json: @eras
  end

  def show
    @era = Era.find(params[:id])
    render json: @era
  end

  def create
  end

  def destroy
  end

  private

  def era_params
    params.require(:era).permit(:name)
  end

end
