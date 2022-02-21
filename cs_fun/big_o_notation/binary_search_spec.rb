require_relative("../binary_search")

describe "should find values in the array" do
	it "when it is the midpoint" do
		expect(binary_search([1, 3, 7, 10, 14, 19, 31], 10)).to eq([3,1])
	end
	it "when it is the only value" do
		expect(binary_search([1], 1)).to eq([0,1])
	end
	it "and count length divided by two steps when at the beginning" do
		expect(binary_search([1, 3, 7, 10, 14, 19, 31], 1)).to eq([0,3])
	end
	it "and count length divided by two steps when at the end" do
		expect(binary_search([1, 3, 7, 10, 14, 19, 31], 31)).to eq([6,3])
	end
	it "and return -1,0 when array empty" do
		expect(binary_search([],3)).to eq([-1,0])
	end
	it "and count length divided by two steps and return -1 when not found" do
		expect(binary_search([1, 3, 7, 10, 14, 19, 31], 6)).to eq([-1,3])
	end
end