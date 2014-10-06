require './lib/airport'
require './lib/plane'

describe Airport do

	let(:airport){Airport.new}

it 'has a default capacity' do
	expect(airport.capacity).to eq 10
end

it 'can be initialized with a capacity' do
	airport = Airport.new(:capacity => 20)
	expect(airport.capacity).to eq 20
end

it 'has no planes in the hangar when initialized' do
	expect(airport).to be_empty
end

it 'can permit planes to land' do
	plane = double :plane

	expect(plane).to receive(:land!)

	airport.park(plane)
end

it 'has one plane in the hangar after one plane has landed' do
	plane = double :plane
	allow(plane).to receive(:land!)
	airport.park(plane)

	expect(airport.hangar).to eq [plane]
end

end