class CarsController < ApplicationController
  def index
    @cars = Car.all
    @drivers = Driver.all
  end

  def show
    @car = Car.find(params[:id])
    @drivers = Driver.all
  end
  
  def new
  end

  def create
    @car = Car.new(car_params)

    @car.save
    redirect_to @car
  end

  private
    def car_params
      params.require(:car).permit(:title, :car_type, :color, { :driver_ids => [] }, :car_image)
    end
end
