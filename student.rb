# frozen_string_literal: true

require_relative './person'
# student class
class Student < Person
  def initialize(age:, name: 'unknown', parent_permission: true)
    super(name: name, age: age, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
