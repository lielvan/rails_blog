class DriversAndCarsController < ApplicationController
  def index
    @cars = Car.all
    @cars_json = @cars.to_json
    @drivers = Driver.all.to_json
  end

  def search
    if !params[:driver_id].blank?
      @driver = Driver.find(params[:driver_id])
      @cars = @driver.cars.all
    elsif !params[:car_id].blank?
      @car = Car.find(params[:car_id])
      @drivers = @car.drivers.all
    end
  end
end
