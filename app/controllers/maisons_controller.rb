class MaisonsController < ApplicationController

 def index
  @maisons = Maison.all
 end

end
