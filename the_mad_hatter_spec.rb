require_relative "hats"

describe 'the_hats_problem' do
  it 'returns an array' do
    the_hats_problem
    expect(the_hats_problem).to be_an(Array)
  end

  it 'returns an array with a length of 100' do
    expect(the_hats_problem.length).to eql(100)
  end
  
  it 'returns an array containing the correct hat state' do
    expected = ['0', '1', '1', '0', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0']
    actual = the_hats_problem
    expect(actual).to eql(expected)
  end
end