require 'docking_station'
require 'bike'
require 'garage'
require 'van'

RSpec.describe "garage" do

  it "a garage should respond to accepting a bike" do
    garage = Garage.new
    expect(garage).to respond_to(:accept_bike)
  end
end
