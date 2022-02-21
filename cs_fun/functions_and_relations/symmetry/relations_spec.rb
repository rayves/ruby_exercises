require_relative("../relations")

describe "isSymmetric?" do
    it "is true when for every (x,y) there is a (y,x)" do
        expect(isSymmetric?([[1,2],[2,1],[2,3],[3,2]])).to eq(true)
    end
    it "is true when there is an (x,x)" do
        expect(isSymmetric?([[1,2],[2,1],[2,2]])).to eq(true)
    end
    it "is true when nothing" do
        expect(isSymmetric?([])).to eq(true)
    end
    it "is false when for every (x,y) there is not a (y,x)" do
        expect(isSymmetric?([[1,2],[1,1]])).to eq(false)
    end
end