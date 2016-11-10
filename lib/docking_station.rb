require_relative 'bike.rb'
class DockingStation


  attr_reader :bike

  def initialize
    @bike = []
  end


  def release_bike
    if @bike.empty?
      raise "No bikes available"
    else
    @bike.pop
    end
  end

  def dock_bike
      if @bike.empty?
       @bike << Bike.new
     else
       raise "The docking station is full"
     end
   end
end
