class DriversAndCarsController < ApplicationController
  def index
    # @cars = Car.all
    # @drivers = Driver.all
    @driver = Driver.find(1)
    @cars = @driver.cars.all

    @car = Car.find(2)
    @drivers = @car.drivers.all
  end

  def search
    if !params[:driver_id].empty?
      @driver = Driver.find(params[:driver_id])
      @cars = @driver.cars.all
    end

    if !params[:car_id].empty?
      @car = Car.find(params[:car_id])
      @drivers = @car.drivers.all
    end

    # render plain: params.inspect
  end
end
