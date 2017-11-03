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
    #roster.map {|grade, name| grade.sort}
    #roster.keys.sort!
    roster.sort!
    roster
  end

end
