require_relative 'parallel'

describe 'calculate ' do
  it 'returns a new array containing the sum of parallel elements of array1 and array2' do
    expected = [5, 7, 9]
    actual = calculate([1, 2, 3], [4, 5, 6])
    expect(actual).to eql(expected)
  end

  it 'works with negative numbers' do
    expected = [3, 3, 3]
    actual = calculate([-1, -2, -3], [4, 5, 6])
    expect(actual).to eql(expected)
  end
end