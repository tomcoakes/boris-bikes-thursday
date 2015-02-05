module BrokenBikeHandling

	def broken_bike_count
		bike_rack.select {|bike| bike.broken?}.count
	end

end