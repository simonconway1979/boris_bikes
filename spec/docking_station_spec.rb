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

      expect(bike.working).to eq(true)
    end
    it "responds to the method dock_bike" do
      expect(subject).to respond_to(:dock_bike)
    end
    it "Once bike is docked, bike dock should have bike in it" do
      bike = subject.dock_bike
      expect(bike.count).to eq(1)
    end
    it "responds to the method bike" do
      expect(subject).to respond_to(:bike)
    end
    it "should show the bikes in the dock when we ask to see_bikes" do
      dock_bike = subject.dock_bike
      bike = subject.bike
      expect(bike).to eq(dock_bike)
    end
    it "When we ask the station for it's capacity it returns it's default
    capacity unless capacity specified " do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end



    it "when we ask the station for it's capacity after specifying it
    to station. The method should be equal to it's capacity" do
       station = DockingStation.new(5)
       expect(station.capacity).to eq 5
    end

    it "will all the user to dock a broken bike and show that this bike is broken" do
      subject.dock_bike(false)
      docked_bike = subject.bike[-1]
      expect(docked_bike.working).to eq false
    end

    it "will test if the next bike to be released is working" do
      subject.dock_bike(false)
      docked_bike = subject.bike[-1]
      expect(docked_bike.working).to eq false
    end

    it "when a broken bike is next to be released it will release a working one instead" do
    subject.dock_bike
    subject.dock_bike(false)
    released_bike = subject.release_bike
    expect(released_bike.working).to eq(true)
  end

  it "checks the dock and returns true if there are working bikes" do
    subject.dock_bike
    expect(subject.check_for_working_bike).to eq true
  end

  it 'checks the dock and returns false if there are no working bikes avaiable' do
    subject.dock_bike(false)
    expect(subject.check_for_working_bike).to eq false
  end


  end

  describe "Errors" do

  it "Should return an error when the docking station is empty and we release
    a bike" do
    station = DockingStation.new
    expect{ station.release_bike }.to raise_error("No bikes available")
  end

  it "Should return an error when the docking station is full and we dock a bike" do
    station = DockingStation.new
    DockingStation::DEFAULT_CAPACITY.times {station.dock_bike}
    expect{ station.dock_bike }.to raise_error("The docking station is full")
  end

  it 'Raises an error when I release a bike and there are no working bikes in the dock' do
    station = DockingStation.new
    station.dock_bike(false)
    expect{ station.release_bike }.to raise_error(RuntimeError, "No bikes avialable")
  end

end

  RSpec.describe :release_bike do
    it {is_expected.not_to be_nil}
  end
