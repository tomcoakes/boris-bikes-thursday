require 'broken_bike_handling'
require 'bike_container'


class Holder
	include BikeContainer
	include BrokenBikeHandling
end


describe BrokenBikeHandling do



	let(:working_bike) {double :working_bike, broken?: false}
	let(:broken_bike) {double :broken_bike, broken?: true}


	it 'should know if it has any broken bikes' do
		holder = Holder.new
		expect(holder.broken_bike_count).to eq(0)
		holder.dock(working_bike)
		expect(holder.broken_bike_count).to eq(0)
		holder.dock(broken_bike)
		expect(holder.broken_bike_count).to eq(1)

	end



end


