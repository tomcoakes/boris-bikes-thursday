require 'broken_bike_handling'
require 'bike_container'


class Holder
	include BikeContainer
	include BrokenBikeHandling
end


describe BrokenBikeHandling do

	let(:holder) {Holder.new}
	let(:working_bike) {double :working_bike, broken?: false}
	let(:broken_bike) {double :broken_bike, broken?: true}

	it 'should know if it has any broken bikes' do
		holder.dock(working_bike)
		holder.dock(broken_bike)
		expect(holder.broken_bike_count).to eq(1)
	end

	it "should be able to release broken bikes" do
		expect(holder.broken_bike_count).to eq(0)
		holder.dock(broken_bike)
		expect(holder.broken_bike_count).to eq(1)
		holder.broken_bike_release
		expect(holder.broken_bike_count).to eq(0)
	end

	it "should know which bikes are broken" do
		
	end

end


