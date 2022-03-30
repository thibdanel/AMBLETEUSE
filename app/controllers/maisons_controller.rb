class MaisonsController < ApplicationController

 def index
  @maisons = Maison.all
 end

 def show
  @maison = Maison.find(params[:id])
 end

end
