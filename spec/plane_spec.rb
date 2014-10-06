require './lib/plane'

describe Plane do
 
 	let(:plane){Plane.new}

# When we create a new plane, it should have a "flying" status,
# thus planes can not be created in the airport.

	it 'should be flying after we create it' do
		expect(plane).to be_flying
	end

# When we land a plane at the airport, the plane in question should have
# its status changed to "landed"

	it 'can land in the airport' do
		plane.flying?
		plane.landed!
		expect(plane).to be_landed
	end

# When the plane takes of from the airport, the plane's status should become "flying" 
 
	it 'can take off from the airport' do
		# it has to have the status of 'landed' first
		plane.landed!
		# its status will then be set to 'flying'
		plane.flying!
		expect(plane).to be_flying
	end

end