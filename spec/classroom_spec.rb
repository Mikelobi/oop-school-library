require './class_room'
require './student'

describe ClassRoom do
  context 'testing classroom class' do
    classroom = ClassRoom.new(label: 'Physics')
    student = Student.new(age: 11, name: 'Bright', parent_permission: true, id: 1)
    classroom.add_students(student)

    it 'should name a label' do
      expect(classroom.label).to eq(label: 'Physics')
    end

    it 'should have atleast one student' do
      expect(classroom.students.length).to eq(1)
    end

    it 'should have a student' do
      student_obj = classroom.students.first
      expect(student_obj.name).to eq(student.name)
    end
  end
end
