class MaisonsController < ApplicationController

 def index
  if params[:query].present?
    @maisons = Maison.search_by_name_and_surface("%#{params[:query]}%")
  else
    @maisons = Maison.all
  end
 end

 def show
  @maison = Maison.find(params[:id])
  @average_rating = @maison.reviews.average(:rating)
 end

end
