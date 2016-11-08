require_relative 'bike'

class DockingStation

#attr_reader :bike

#def initialize(bike)
#  @bike = bike
#end

def release_bike
  Bike.new
end

def return_bike
  "Bike returned"
end

end
