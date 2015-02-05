module BikeContainer

  attr_reader :capacity

	def bike_rack
		@bike_rack ||= []
	end

	def dock(bike)
		bike_rack << bike
	end 
	
  def bike_rack_capacity
    @capacity = 20
  end

  def full?
    true
  end

  def available_bikes
    bike_rack.count
  end

  def release
    bike_rack.pop
  end

end