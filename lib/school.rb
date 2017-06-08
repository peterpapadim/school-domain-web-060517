require "Pry"

class School

	def initialize(name)
	  @name = name
	  @roster = {}
	end

	def roster
	  @roster
	end

	def add_student(student_name, student_grade)
	  if @roster.has_key?(student_grade)
		  @roster[student_grade] << student_name
	  else 
		  @roster[student_grade] = [student_name]
	  end
	end

	def grade(student_grade)
	  @roster[student_grade]
	end

	def sort
		@roster.each do |student_grade, student_list|
		  student_list.sort!
		end
	end

end
