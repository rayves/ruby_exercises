require_relative('../exclusive_or')

describe "Should return xor" do
	it "of 1 for 0 xor 1" do
		expect(exclusive_or(0, 1)).to eq(1)
	end
	it "of 1 for 1 xor 1" do
		expect(exclusive_or(1, 1)).to eq(0)
	end
	it "of 1 for 0 xor 0" do
		expect(exclusive_or(0, 0)).to eq(0)
	end
	it "of 1 for 7(111) xor 6(110)" do
		expect(exclusive_or(7, 6)).to eq(1)
	end
	it "of 1 for 6(110) xor 7(111)" do
		expect(exclusive_or(6, 7)).to eq(1)
	end
	it "of 4 for 7(111) xor 3(011)" do
		expect(exclusive_or(7,3)).to eq(4)
	end
	it "of 4 for 3(011) xor 7(111)" do
		expect(exclusive_or(3, 7)).to eq(4)
	end
end