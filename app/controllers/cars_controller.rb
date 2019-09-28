class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end
  
  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)

    if @car.save
      ActionCable.server.broadcast 'car',
        id: @car.id,
        title: @car.title,
        car_type: @car.car_type,
        color: @car.color,
        drivers: list_drivers
      redirect_to @car
    else
      render 'new'
    end
  end

  private
    def car_params
      params.require(:car).permit(:title, :car_type, :color, { :driver_ids => [] }, :car_image)
    end

    def list_drivers
      return @car.drivers.map {|d| d.name}.join(', ')
    end
end
