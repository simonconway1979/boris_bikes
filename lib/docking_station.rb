require_relative 'bike.rb'
class DockingStation

  def release_bike
    if @bike.nil?
      raise "No bikes available"
    else
      Bike.new
    end
  end

  def dock_bike
    @bike = Bike.new
  end


  attr_reader :bike

end
