class CarSimController < ApplicationController
  def simulate
    @car = YAML.load(cookies[:car])
  end

  def accelerate
    simulate
    @car.accelerate
    cookies[:car] = @car.to_yaml
    redirect_to '/car_sim/simulate'
  end

  def brake
    simulate
    @car.brake
    cookies[:car] = @car.to_yaml
    redirect_to '/car_sim/simulate'
  end
end
