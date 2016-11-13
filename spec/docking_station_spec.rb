  require 'docking_station'
  require 'bike'
  require 'garage'
  require 'van'

  RSpec.describe "release_bike" do

    it "the docking station should repond when asked to release a bike" do
      station = DockingStation.new
      expect(station).to respond_to(:release_bike)
    end

    it "should return a bike when a bike is released after a bike was docked" do
      station = DockingStation.new
      station.dock_bike #We dock a bike so there is a bike to release
      bike = station.release_bike
      expect(bike).to be_an_instance_of(Bike)
    end

    it "should return status of bike that is released" do
      station = DockingStation.new
      station.dock_bike #We dock a bike so there is a bike to release
      bike = station.release_bike

      expect(bike.working).to eq(true)
    end

        it "will test if the next bike to be released is working" do
      station = DockingStation.new
          station.dock_bike(false)
          docked_bike = station.bike[-1]
          expect(docked_bike.working).to eq false
        end

        it "when a broken bike is next to be released it will release a working one instead" do
      station = DockingStation.new
        station.dock_bike
        station.dock_bike(false)
        released_bike = station.release_bike
        expect(released_bike.working).to eq(true)
      end
end

  RSpec.describe "dock_bike" do

    it "responds to the method dock_bike" do
      station = DockingStation.new
      expect(station).to respond_to(:dock_bike)
    end
    it "Once bike is docked, bike dock should have bike in it" do
      station = DockingStation.new
      bike = station.dock_bike
      expect(bike.count).to eq(1)
    end
end



  RSpec.describe "Dock status" do

    it "responds to the method bike" do
      station = DockingStation.new
      expect(station).to respond_to(:bike)
    end
    it "should show the bikes in the dock when we ask to see bikes" do
      station = DockingStation.new

      dock_bike = station.dock_bike
      bike = station.bike
      expect(bike).to eq(dock_bike)
    end
    it "When we ask the station for it's capacity it returns it's default
    capacity when no capacity is specified" do
      station = DockingStation.new
      expect(station.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end
    it "a station with a non default capacity should return the capacity" do
       station = DockingStation.new(5)
       expect(station.capacity).to eq 5
    end
    it "checks the dock and returns true if there are working bikes" do
      station = DockingStation.new
      station.dock_bike
      expect(station.check_for_working_bike).to eq true
    end

    it 'checks the dock and returns false if there are no working bikes avaiable' do
      station = DockingStation.new
      station.dock_bike(false)
      expect(station.check_for_working_bike).to eq false
    end

    it "will show that a docked broken bike is marked as broken" do
      station = DockingStation.new
      station.dock_bike(false)
      docked_bike = station.bike[-1]
      expect(docked_bike.working).to eq false
    end

    it "will show all of the broken docked bikes" do
      station = DockingStation.new
      station.dock_bike(false)
      station.dock_bike(false)
      station.dock_bike
      broken_bikes = station.show_broken_bikes
      expect(broken_bikes.count).to eq(2)
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
