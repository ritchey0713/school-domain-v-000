require 'pry'
class School
 attr_accessor :roster
 attr_reader :name 

@@all = []


def initialize(name)
  @name = name 
  @roster = {}
  @@all << self 
  
end


def add_student(student_name, grade_year)
  if @roster[grade_year]!= nil
     @roster[grade_year] << student_name
 else 
  @roster[grade_year] = []
  @roster[grade_year] << student_name
end
  
end

def grade(grade_year) 
  @roster[grade_year]
end

def sort 
  sorted_students = @roster.each do |grade, name|
    @roster[grade] = name.sort
    end
end


end 





































