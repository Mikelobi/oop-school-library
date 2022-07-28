require './teacher'

describe Teacher do
  context 'testing Teacher class' do
    teacher = Teacher.new(name: 'David', age: 22, id: 1, parent_permission: true, specialization: 'Physics')

    it 'should have a name' do
      expect(teacher.name).to eq('David')
    end

    it 'should specialize in Physics' do
      expect(teacher.specialization).to eq('Physics')
    end
  end
end
