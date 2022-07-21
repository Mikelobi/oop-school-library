# Person class # rubocop:todo Layout/EndOfLine
class Person
  attr_accessor :name, :age
  attr_reader :id, :rentals

  def initialize(age:, name: 'unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end
