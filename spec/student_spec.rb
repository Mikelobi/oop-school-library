require './student'

describe Student do
  context 'the class must be instantiate' do
    it 'All the method must pass' do
      age = 34
      name = 'Mick'
      parent_permission = true
      id = 456

      student = Student.new(age: age, name: name, parent_permission: parent_permission, id: id)
      expect(student).to be_instance_of Student
      expect(student.play_hooky).to eq("¯\(ツ)/¯")
    end
  end
end
