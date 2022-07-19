# frozen_string_literal: true

require_relative './person'
# Teacher class
class Teacher < Person
  def initialize(age:, name: 'unknown', parent_permission: true)
    super(name: name, age: age, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
