class Plane

	def initialize 
		flying!
	end

	def flying?
		@flying
	end

	def landed!
		@landed = true
		@flying = false
	end

	def flying!
		@flying = true
		@landed = false
	end

	def landed?
		@landed
	end
	
end