class BuildingsController < ApplicationController

def new
  @building = Building.new
end

def create
  @building = Building.new(building_params)
  if @building.save
    redirect_to new_building_path, notice: "Building Successfully Created"
  else
    render 'new'
  end
end

private

def building_params
  params.require(:building).permit(:street_address,:city,:state,:postal_code,:description)
end

end