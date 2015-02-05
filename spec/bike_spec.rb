require 'bike'

describe Bike do

  let(:bike) {Bike.new}
  let(:broken_bike) {Bike.new.break}

  it "should not be broken when created" do
    expect(bike.broken?).to eq false
  end

  it "should be able to break" do
    bike.break
    expect(bike.broken?).to eq true
  end
  
  it "should be able to be fixed" do
    broken_bike.fix
    expect(broken_bike.broken?).to eq false
  end

end