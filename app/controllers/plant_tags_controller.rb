class PlantTagsController < ApplicationController
  before_action :set_plant, only: [:new, :create]
  def new
    @plant_tag = PlantTag.new
  end

  def create
    @plant_tag = PlantTag.new(plant_tag_params)
    @plant_tag.plant = @plant
    if @plant_tag.save
      redirect_to garden_path(@plant.garden)
    else
      render :new
    end
  end

  private

  def plant_tag_params
    params.require(:plant_tag).permit(:tag_id)
  end

  def set_plant
    @plant = Plant.find(params[:plant_id])
  end

end
