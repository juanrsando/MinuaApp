class PlacesController < ApplicationController
  def index
    # Ordering places by the date created
    @places = Place.order('updated_at DESC')
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new place_params
    if @place.save
      flash[:success] = "¡Lugar añadido!"
      redirect_to root_path
    else
      render 'new'
    end
  end
  def show
    @place = Place.find params[:id]
  end
end

private
# todo debajo de private va a estar protegido de inyecciones de código
def place_params
  params.require(:place).permit(:title, :address, :visited_by)
end
