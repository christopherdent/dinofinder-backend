class Api::V1::DinoTypesController < ApplicationController

before_action :set_era

## /api/v1/eras/1/dino_types

  def index
    @dino_types = @era.dino_types
    # @dino_types = DinoType.all
    render json: @dino_types
  end


  def show
    # @dino_type = DinoType.find(params[:id])
    @dino_type = @era.dino_types.find_by(id: params[:id])
    render json: @dino_type
  end

  def create
  end

  def destroy
    # @dino_type = DinoType.find(params[:id])
    # @dino_type.destroy
  end

private

  def set_era
    @era = Era.find(params[:era_id])
  end

  def dino_type_params
    params.require(:dino_type).permit(:name, :era_id)
  end



end
