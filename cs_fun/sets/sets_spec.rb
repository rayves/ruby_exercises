require_relative('../sets')

set1 = [1,2,3]
set2 = [3,4,5]
set3 = ["a", "b", "c"]
set4 = ["c", "d", "e"]

describe "Should return union" do
	it "with all numbers" do
		expect(union(set1,set2)).to eq([1,2,3,4,5])
	end
	it "with all letters" do
		expect(union(set3, set4)).to eq(["a","b","c","d","e"])
	end
	it "with nothing for empty sets" do
		expect(union([],[])).to eq([])
	end
end

describe "Should return intersection" do
	it "with only common numbers" do
		expect(intersection(set1,set2)).to eq([3])
	end
	it "with only common letters" do
		expect(intersection(set3,set4)).to eq(["c"])
	end
	it "with nothing for empty sets" do
		expect(intersection([],[])).to eq([])
	end
end

describe "Should return symmetric difference" do
	it "with unique numbers from each set" do
		expect(symmetric_difference(set1,set2)).to eq([1,2,4,5])
	end
	it "with unique letters from each set" do
		expect(symmetric_difference(set3,set4)).to eq(["a","b","d","e"])
	end
	it "with nothing for empty sets" do
		expect(intersection([],[])).to eq([])
	end
end
	