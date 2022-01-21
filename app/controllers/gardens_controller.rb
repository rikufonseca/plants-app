class GardensController < ApplicationController
  before_action :garden, only: [:show, :edit, :update, :destroy]

  def index
    @gardens = Garden.all
  end

  def show
    @plants = Plant.all
    @plant = Plant.new
  end

  def new
    @garden = Garden.new
  end

  def create
    @garden = Garden.new(params_garden)
      if @garden.save
        redirect_to @garden
      else 
        render :new
        flash[:error] = "Try again you missed something"
      end
  end

  def edit
  end

  def update
    if @garden.update(params_garden)
      redirect_to @garden, notice: "you updated it successfully"
    else
      render :edit
      flash[:error] = "something went wrong, nothing had been updated"
    end
  end

  def destroy
    @garden.destroy
    redirect_to gardens_path
  end

  private

  def garden
    @garden = Garden.find(params[:id])
  end

  def params_garden
    params.require(:garden).permit(:name, :banner_url)
  end
end
