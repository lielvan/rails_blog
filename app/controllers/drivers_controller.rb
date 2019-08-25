class DriversController < ApplicationController
  def index
    @drivers = Driver.all.to_json
  end

  def show
    @driver = Driver.find(params[:id])
  end
  
  def new
    @driver = Driver.new
  end

  def create
    @driver = Driver.new(driver_params)      
    
    if @driver.save
      redirect_to @driver
    else
      render 'new'
    end

  end

  private
    def driver_params
      params.require(:driver).permit(:name, :email, :date_of_birth, { :car_ids => [] }, :driver_image)
    end
end