require './capitalizedecorator'

describe CapitalizeDecorator do

  context 'The test suppose to pass' do
    it 'Should convert the name into capital case' do
      nameable = double('nameable')

      allow(nameable).to receive(:nameable) {correct_name'John Smith'}
      cr = CapitalizeDecorator.new(nameable)
      expect(cr.correct_name).to be('JOHN SMITH')
    end
  end
end