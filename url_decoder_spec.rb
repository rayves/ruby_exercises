require_relative '/home/answer.rb'

describe '#parse_url' do
	context 'Part One' do
		let(:result) { parse_url("www.html5zombo.com/test?volume=full") }
		
		it 'returns a hash data type' do
			expect(result).to be_a(Hash), "\nYour method returned a #{result.class} you need to return a Hash"
		end
		
		it 'returns a hash with the key query' do
			expect(result).to have_key(:query), "\nThe returned Hash does not have the key `:query`"
		end
		
		it 'the query key should have a hash as its value' do
			actual = result[:query]
			expect(actual).to be_a(Hash), "\nThe value at `:query` is a #{actual.class} it should a Hash"
		end
		
		it 'the query hash should have the key from the url' do
			expect(result[:query]).to have_key(:volume), "\nThe returned Hash does not have the key `:volume`"
		end
		
		it 'the query hash should have the value from the url' do
			expect(result[:query][:volume]).to eq("full"), "\nThe value at [:query][:volume] is #{result[:query][:volume]} it should be \"full\""
		end
	end
	
	context 'Part Two' do
		let(:result) { parse_url("www.html5zombo.com/test?volume=full") }
		
		it 'the return hash should have a base_url key' do
			expect(result).to have_key(:base_url), "\nThe returned Hash does not have the key `:base_url`"
		end
		
		it 'the key base_url should have the correct value' do
			path = "www.html5zombo.com"
			expect(result[:base_url]).to eq(path), "\nThe value at [:base_url] is #{result[:base_url]} it should be \"#{path}\""
		end
		
		it 'the return hash should have a route key' do
			expect(result).to have_key(:route), "\nThe returned Hash does not have the key `:route`"
		end
		
		it 'the key route should have the correct value' do
			expect(result[:route]).to eq("test"), "\nThe value at [:base_url] is #{result[:route]} it should be \"test\""
		end
	end
	
	context 'Part Three Bonus' do
		let(:result) { parse_url("www.html5zombo.com/test?volume=full&autoplay=yes")[:query] }
		
		it 'the query hash has the correct number of keys' do
			expect(result.length).to eq(2)
		end
		
		it 'the query hash has the last key' do
			expect(result).to have_key(:autoplay), "\nThe Hash at key `query` does not have the key `:autoplay`"
		end
		
		it 'the query hash has the correct value at the last key' do
			expect(result[:autoplay]).to eq("yes"), "\nThe value at [:autoplay] is #{result[:autoplay]} it should be \"yes\""
		end
	end
	
	context 'Part Four Bonus' do
		let(:result) { parse_url("www.html5zombo.com/test?title=What%20is%20this%20text")[:query] }
		
		it 'the query hash has the correct key' do
			expect(result).to have_key(:title), "\nThe Hash at key `query` does not have the key `:title`"
		end
		
		it 'the query hash has the value with spaces' do
			expect(result[:title]).to eq("What is this text"), "\nThe value at [:title] is #{result[:title]} it should be \"What is this text\""
		end
	end
	
	context 'Part Five Extra' do
		let(:result) { parse_url("www.html5zombo.com/test?id=123&admin=true")[:query] }
		
		it 'converts string value `true` to a ruby TrueClass' do
			expect(result[:admin]).to be_a(TrueClass)
		end
		
		it 'converts string value `false` to a ruby FalseClass' do
			actual = parse_url("www.html5zombo.com/test?id=123&admin=false")[:query]
			expect(actual[:admin]).to be_a(FalseClass)
		end
		
		it 'converts string value `123` to a ruby Integer' do
			expect(result[:id]).to be_a(Integer)
		end
	end
end