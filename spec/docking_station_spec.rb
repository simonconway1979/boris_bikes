require 'docking_station'

describe DockingStation do
it 'responds to the method release_bike' do
  expect(subject).to respond_to(:release_bike)
end

it 'When a bike is released the bike is working' do
  bike = subject.release_bike
  expect(bike).to be_working
end

it 'Can accept to a bike returned to the docking station' do
  expect(subject).to respond_to(:return_bike)
end




end
