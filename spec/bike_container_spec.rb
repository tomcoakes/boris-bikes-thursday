require 'bike_container'

class Holder; include BikeContainer; end

describe BikeContainer do

let(:holder) {Holder.new}
let(:bike) {double :bike}

def add_one_bike
  holder.dock(bike)
end

	it 'should be able to hold bikes' do
		expect(holder.bike_rack).to eq []
	end

	it 'should be able to dock bikes' do
		expect(holder.bike_rack.count).to eq(0)
		add_one_bike 
		expect(holder.bike_rack.count).to eq(1)
	end

	it "should know its capacity" do
    expect(holder.bike_rack_capacity).to eq(20)
  end

  it "should know when its full" do
    expect(holder.bike_rack.count).to eq(0)
    20.times {add_one_bike}
    expect(holder.full?).to eq true
  end

  it "should know how many available bikes there are" do
    expect(holder.bike_rack.count).to eq(0)
    add_one_bike 
    expect(holder.available_bikes).to eq(1)
  end

  it "should be able to release bikes" do
    expect(holder.bike_rack.count).to eq(0)
    add_one_bike
    holder.release
    expect(holder.bike_rack.count).to eq(0)

  end

end