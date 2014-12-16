class PiratesController < ApplicationController

  def index
    @pirates = Pirate.all
  end

  def new
    @pirate = Pirate.new
  end

  def create
    @pirate = Pirate.new(pirate_params)
    if @pirate.save
      redirect_to root_path, notice: "New pirate saved!"
    else
      render :new
    end
  end

  private
  def pirate_params
    params.require(:pirate).permit(:name, :poison)
  end

end
