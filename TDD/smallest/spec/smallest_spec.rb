require_relative '../smallest'

describe "smallest" do
    it "should return smallest number in array of numbers" do
        expect(smallest([1,2])).to be(1)
    end
    it "should return smallest number if second number is smaller" do
        expect(smallest([2,1])).to be(1)
    end
    it "should return the shortest string in array" do
        expect(smallest(["a","ab"])).to eq("a")
    end
    it "should return the shortest string in array if shortest string is second string" do
        expect(smallest(["ab","a", "b"])).to eq("a")
    end
end
