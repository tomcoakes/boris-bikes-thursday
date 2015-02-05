require 'bike_container'

class Holder; include BikeContainer; end

describe BikeContainer do

let(:holder) {Holder.new}
let(:bike) {double :bike}

	it 'should be able to hold bikes' do
		expect(holder.bike_rack).to eq []
	end

	it 'should be able to dock bikes' do
		expect(holder.bike_rack.count).to eq(0)
		holder.dock(bike) 
		expect(holder.bike_rack.count).to eq(1)
	end

	

end