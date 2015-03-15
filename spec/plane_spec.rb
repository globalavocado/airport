require './lib/plane'

describe Plane do
 
 	let(:plane){Plane.new}

	it 'should be flying after we create it' do
		expect(plane).to be_flying
	end

	it 'can land in the airport' do
		plane.flying?
		plane.landed?
		expect(plane).to be_landed
	end

	it 'can take off from the airport' do
		plane.landed?
		plane.flying!
		expect(plane).to be_flying
	end

end