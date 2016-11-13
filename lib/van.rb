require_relative 'bike.rb'
require_relative 'garage.rb'
require_relative 'van.rb'

class Van

  attr_accessor :bike

def initialize
  @bike = []
end

def collect_broken_bikes
  arr = station.show_broken_bikes
  van.bikes << arr
end

end
