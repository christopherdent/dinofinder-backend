class Api::V1::DinosaursController < ApplicationController
before_action :set_dino_type


  def index
    # @dinosaurs = Dinosaur.all
    @dinosaurs = @dino_type.dinosaurs
    render json: @dinosaurs
  end

  def create
    @dinosaur = Dinosaur.new(dinosaur_params)
    if @dinosaur.save
      render json: @dinosaur
    else
      render json: {error: 'Error creating dinosaur'}
    end
  end

  def show
    # @dinosaur = Dinosaur.find(params[:id])
    @dinosaur = @dino_type.dinosaurs.find_by(id: params[:id])
    render json: @dinosaur
  end

  def destroy
    @dinosaur = Dinosaud.find(params[:id])
    @dinosaur.destroy
  end

private

def set_dino_type
  @dino_type = DinoType.find(params[:dino_type_id])
end


  def dinosaur_params
    params.require(:dinosaur).permit(:name, :size, :weight, :temporal_range, :year_discovered, :picture_url, :summary, :dino_type_id)
  end



end
