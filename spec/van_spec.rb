require 'docking_station'
require 'bike'
require 'garage'
require 'van'

RSpec.describe Van do
it 'the van collects broken bikes from the docking station' do
DockingStation.van_remove_bikes
station.dock_bike(false)
station.dock_bike(false)

expect(subject).to respond_to(:collect_broken_bikes)
expect(collect_broken_bikes.count).to eq(2)
end

end
