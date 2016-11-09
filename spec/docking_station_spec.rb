require 'docking_station'
require 'bike'

RSpec.describe DockingStation do
  it {is_expected.to respond_to(:release_bike)}
  it "should return a bike when a bike is released after a bike was docked" do
    subject.dock_bike #We dock a bike so there is a bike to release
    bike = subject.release_bike
    expect(bike).to be_an_instance_of(Bike)
  end
  it "should return status of bike when Docking station gets a bike after a bike was docked" do
    subject.dock_bike #We dock a bike so there is a bike to release
    bike = subject.release_bike
    bike_status = bike.working?
    expect(bike_status).to eq(true)
  end
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
  it "should return error when the error method is called" do
    expect{ subject.release_bike }.to raise_error("No bikes available")
  end
end

RSpec.describe :release_bike do
  it {is_expected.not_to be_nil}
end
