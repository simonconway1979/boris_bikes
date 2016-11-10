require_relative 'bike.rb'

class DockingStation

  attr_reader :bike, :capacity


DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bike = []
    @capacity = capacity
  end


  def release_bike
    if empty?
      raise "No bikes available"
    else
    @bike.pop
    end
  end

  def dock_bike(broken = false)
    if full?
      raise "The docking station is full"
    else
      @bike << Bike.new
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
