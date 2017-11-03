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
    #roster.sort_by{|k,v| v}
    #roster.sort_by{|k, v| v.sort}
    roster.each do |grade, value|
      roster[grade] = value.sort
    end
  end

end
