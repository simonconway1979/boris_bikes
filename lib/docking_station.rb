require_relative 'bike.rb'
class DockingStation

  def release_bike
     Bike.new
  end

  def dock_bike
    @bike = Bike.new
  end

attr_reader :bike

end
