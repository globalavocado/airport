require './lib/plane'

class Airport

	DEFAULT_CAPACITY = 10

	def initialize(capacity: DEFAULT_CAPACITY)
		@capacity = capacity
		@planes = []
	end

	def capacity
		@capacity
	end

	def empty?
		true
	end

	def park(plane)
		plane.land!
		@planes << plane
	end

	def hangar
		@planes
	end

end
