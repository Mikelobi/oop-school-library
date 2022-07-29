require './capitalizedecorator'
require './person'

describe CapitalizeDecorator do
  context 'text for CapitalizeDecorator class' do
    person = Person.new(name: 'collins', age: 11, id: 2, parent_permission: true)
    cr = CapitalizeDecorator.new(person)
    it 'Should convert the name into COLLINS' do
      expect(cr.correct_name).to eq('COLLINS')
    end
  end
end
