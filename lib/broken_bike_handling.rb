module BrokenBikeHandling

	def broken_bike_count
		bike_rack.select {|bike| bike.broken?}.count
	end

  def broken_bike_release
    bike_rack.select do |bike|
      broken_bikes = []
      if bike.broken?
        broken_bikes << bike
        bike_rack.delete(bike)
      end
    end
  end

end