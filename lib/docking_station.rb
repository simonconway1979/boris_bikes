require_relative 'bike.rb'

class DockingStation

  attr_reader :bike, :capacity


DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bike = []
    @capacity = capacity
  end

def check_for_working_bike
  total_bikes = bike.count
  broken_bikes = bike.select{|a| a.working == false}.count
if total_bikes == broken_bikes
  puts "All of the bikes in the dock are broken. Please come back later."
  false
else
  puts "There are working bikes available in the dock"
  true
end
end

  def release_bike
    if empty?
      raise "No bikes available"
    elsif check_for_working_bike == false
      raise "No bikes avialable"
    elsif @bike[-1].working == false
      @bike.rotate!
      @bike.pop
    else
      @bike.pop
    end
  end

  def dock_bike(working = true)
    if full?
      raise "The docking station is full"
    elsif working == true
      @bike << Bike.new
    else
      @bike << Bike.new(false)
    end
  end

  private

  def empty?
    @bike.count == 0
  end

  def full?
    @bike.count >= @capacity
  end

end
