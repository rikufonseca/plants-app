class PlantsController < ApplicationController

  
  def create
     @plant = Plant.new(params_plant)
     @garden = Garden.find(params[:garden_id])
     @plant.garden = @garden
     if @plant.save
       redirect_to garden_path(@garden)
     else
       render :new
     end
  end

  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy
    @garden = Garden.find(@plant.garden_id)
    redirect_to garden_path(@garden)
  end

  private

  def params_plant
    params.require(:plant).permit(:name, :image_url)
  end
end
