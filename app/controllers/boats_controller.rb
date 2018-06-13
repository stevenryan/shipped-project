class BoatsController < ApplicationController
  def index
  	@boats = Boat.all
  end

  def new
  	@boat = Boat.new
  end

  def edit
  end

  def create
  	@boat= Boat.new(boat_params)
  end

  def show
  end
end
