require './trimmer_decorator'
require './person'

describe TrimmerDecorator do
  context 'text for TrimmerDecorator class' do
    person = Person.new(name: 'christianmichael', age: 11, id: 2, parent_permission: true)
    trim = TrimmerDecorator.new(person)
    it 'Should trim the name to ten character ' do
      expect(trim.correct_name).to eq('christianm')
    end
  end
end
