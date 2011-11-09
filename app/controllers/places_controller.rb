class PlacesController < ApplicationController
  def create
    @tour = Tour.find(params[:tour_id])
    @place = @tour.places.create(params[:place])
    redirect_to tour_path(@tour)
  end
  
  def destroy
    @tour = Tour.find(params[:tour_id])
    @place = @tour.places.find(params[:id])
    @place.destroy
    redirect_to tour_path(@tour)
  end
end
