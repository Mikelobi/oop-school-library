require './solver'

describe Solver do
  it 'the class solver methods must fullfil all the required conditions' do
    solver = Solver.new

    expect { solver.factorial(-1) }.to raise_error('Negative number can\'t have factorial', ArgumentError)
    expect(solver.factorial(0)).to eq(1)
    expect(solver.factorial(5)).to eq(120)

    expect(solver.reverse('hello')).to match('olleh')

    expect(solver.fizzbuzz(6)).to eq('fizz')
    expect(solver.fizzbuzz(10)).to eq('buzz')
    expect(solver.fizzbuzz(30)).to eq('fizzbuzz')
    expect(solver.fizzbuzz(7)).to eq(7)
  end
end
