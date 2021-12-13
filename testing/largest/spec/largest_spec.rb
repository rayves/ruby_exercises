require_relative '../largest'

describe 'largest' do
    it 'should return the largest number in an array of numbers' do
        expect(largest([1,2])).to be(2)
    end
    it 'should return the largest number when it is second in the array' do
        expect(largest([0,1])).to be(1)
    end
    it 'should return the largest string' do
        expect(largest(["a", "ab"])).to eq("ab")
    end
end