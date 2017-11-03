class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    roster[grade] = [] if !roster[grade]
    roster[grade] << name

  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.keys.sort
  end

end
