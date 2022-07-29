require './person'

describe Person do
  context 'it must instantiate an object' do
    it 'must be true' do
      age = 45
      name = 'MJ'
      id = 100
      parent_permission = true
      rental = '2020/07/20'

      person = Person.new(age: age, name: name, id: id, parent_permission: parent_permission)
      expect(person).to be_instance_of Person

      expect(person.can_use_services?).to be true
      expect(person.add_rental(rental)).to eq(['2020/07/20'])
    end
  end
end
