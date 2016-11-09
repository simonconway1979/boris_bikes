require 'docking_station'
require 'bike'

RSpec.describe DockingStation do
it {is_expected.to respond_to(:release_bike)}

end

RSpec.describe :release_bike do
  it {is_expected.not_to be_nil}
end

RSpec.describe "Does Docking station get a bike and does it work?" do
station = DockingStation.new
bike = station.release_bike
bike_status = bike.working?
it {expect(bike).to be_an_instance_of(Bike)}
it {expect(bike_status).to eq(true)}
end




#Docking station will create an instance of a bike object
