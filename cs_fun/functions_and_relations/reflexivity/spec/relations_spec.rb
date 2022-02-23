require_relative("../relations")

describe "isReflexive?" do
    it "is true when for every x there is an (x,x)" do
        expect(isReflexive?([[1,1],[2,2]])).to eq(true)
    end
    it "is true when there is an (x,y) as long as there is an (x,x)" do
        expect(isReflexive?([[1,1],[2,3],[2,2]])).to eq(true)
    end
    it "is false when for every x there is not an (x,x)" do
        expect(isReflexive?([[1,1],[2,3]])).to eq(false)
    end
end