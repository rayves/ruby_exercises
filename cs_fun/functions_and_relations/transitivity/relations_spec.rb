require_relative("../relations")

describe "isTransitive?" do
    it "is true when for every (x,y) and (y,z) there is an (x,z)" do
        expect(isTransitive?([[1,2],[2,3],[1,3]])).to eq(true)
    end
    it "is true when there is an (x,y) without (y,z)" do
        expect(isTransitive?([[1,2],[1,3]])).to eq(true)
    end
    it "is true when there is nothing" do
        expect(isTransitive?([])).to eq(true)
    end
    it "is false when for every (x,y) and (y,z) there is not an (x,z)" do
        expect(isTransitive?([[1,2],[2,3],[1,4]])).to eq(false)
    end
end