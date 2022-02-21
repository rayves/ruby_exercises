require_relative('../add_matrix')

describe "When they don't match" do
	it "should return nil (cols don't match)" do
		expect(add_matrix([1,1,1],[1])).to be(nil)
	end
	it "should return nil (rows don't match)" do
		expect(add_matrix([1,1,1],[[1,1,1],[1,1,1]])).to be(nil)
	end
end

describe "When both are empty" do
	it "should return empty" do
		expect(add_matrix([],[])).to eq([])
	end
	it "should return empty for multiple rows" do
		expect(add_matrix([[],[]], [[],[]])).to eq([[],[]])
	end
end

describe "When one row" do
	it "should add row" do
		expect(add_matrix([1,1,1],[1,1,1])).to eq([2,2,2])
	end
end

describe "When one column" do
	it "should add column" do
		expect(add_matrix([[1],[1]],[[1],[1]])).to eq([[2],[2]])
	end
end

describe "When multiple rows and columns" do
	it "should return multiple rows and columns" do
		expect(add_matrix([[1,1],[1,1]],[[1,1],[1,1]])).to eq([[2,2],[2,2]])
	end
end