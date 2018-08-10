require_relative "bike"

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bike_array, :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @bike_array =[]
    @capacity = capacity
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
    @bike_array.size >= DEFAULT_CAPACITY ? true : false
  end

  def empty?
    @bike_array.empty?
  end

#  def show_bike
#    @bike
#  end

end
