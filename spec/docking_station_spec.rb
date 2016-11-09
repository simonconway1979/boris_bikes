require 'docking_station'
require 'bike'

RSpec.describe DockingStation do
  it {is_expected.to respond_to(:release_bike)}
  it "responds to the method dock_bike" do
    expect(subject).to respond_to(:dock_bike)
  end
  it "should return a bike when a bike was docked" do
    bike = subject.dock_bike
    expect(bike).to be_an_instance_of(Bike)
  end
  it "responds to the method bike" do
    expect(subject).to respond_to(:bike)
  end

  it "should show the bikes in the dock when we ask to see_bikes" do
    dock_bike = subject.dock_bike
    bike = subject.bike
    expect(bike).to eq(dock_bike)
  end
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
