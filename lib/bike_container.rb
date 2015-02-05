module BikeContainer

	def bike_rack
		@bike_rack ||= []
	end

	def dock(bike)
		bike_rack << bike
	end 
	
end