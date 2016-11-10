require 'bike.rb'

RSpec.describe Bike do
  it {is_expected.to respond_to(:working)}

end

describe 'Testing working is equal to true' do
  jacks_bike = Bike.new

  it 'When we look at a bike it should tell us if it is working' do
    expect(jacks_bike.working).to eq true
  end
end
