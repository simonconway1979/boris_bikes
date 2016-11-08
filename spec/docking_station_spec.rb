require 'docking_station'
require 'bike'

RSpec.describe DockingStation do
it {is_expected.to respond_to(:release_bike)}
end

RSpec.describe :release_bike do
  it {is_expected.not_to be_nil}
  it {expect(:release_bike).to be_an_instance_of(Bike)}
end



#Docking station will create an instance of a bike object
