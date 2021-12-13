# *rspec template

describe 'string explaining what block of tests will do' do
    it 'string describes what particular thing this test will test' do
    #define a single test
    #pass string arguement
    end
end

#* rspec-expectations

#used to assert expected test results
built in matchers
- Identity - to be, to eq
    # tests object identity
- Comparisons - to be < , to be >
- Regular expressions - top match
- Types/classes to be_an_instance_of, to be_a_kind_of
- Truthiness - to be_truthy, to be_falsy, to be_nil, to_not be_nil
- Errors - to raise_error

#*test example

require_relative '../pet'

describe Pet do
    it "should have a name" do
        pet = Pet.new("Poto")
        # initialize new "Poto" object from class Pet
        expect(pet.name).to eq "Poto"
        # expected output for pet.name = "Poto"
            # tests Class is implemented
            # tests Class takes a single argument to the initialized method
            # tests argument is stored as the name instance variable
            # tests access has been given to name instance variable
        expect(pet.name).to match /^P/
            # regular expression
            # test that name starts with capital P
        expect(pet).to be_instance_of Pet
            #check true or false pet variable is an instance of Class Pet
    end
end

running rspec test output

rspec -> dots
rspec -f d -> shows method and tests