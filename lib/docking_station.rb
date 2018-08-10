require_relative "bike"

class DockingStation
  attr_reader :bike_array

  def initialize
    @bike_array =[]
  end

  def release_bike
  #  Bike.new
  raise "No bikes available" if empty?
  @bike_array.pop
  end

  def dock(bike)
    raise "Docking station full" if full?
    @bike_array << bike
  end

  private
  def full?
    @bike_array.size >= 20 ? true : false
  end

  def empty?
    @bike_array.size < 1 ? true : false
  end

#  def show_bike
#    @bike
#  end

end
