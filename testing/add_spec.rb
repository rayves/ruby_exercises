require_relative '../add.rb'

describe "add" do
    it "should be defined" do #first test
    #first expectation
        expect(defined? add).to eql("method") #need to define a method called add
    end    
    it "should accept two arguments" do
        expect {add(1)}.to raise_error(ArgumentError)
        expect {add(1,2,3)}.to raise_error(ArgumentError)
        expect {add(1,2)}.to_not raise_error

    end
    it "should add integers correctly" do
        expect(add(5,5)).to eq(10)
        expect(add(1,1)).to eq(2)
    end
end