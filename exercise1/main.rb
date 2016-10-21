require_relative 'student'
require_relative 'instructor'

chris     = Instructor.new("Chris")
cristina  = Student.new("Cristina")

# chris.greeting
# cristina.greeting
chris.teach
cristina.learn
cristina.teach
chris.learn
# above 2 won't work because there is no method in their
# class that matches the command
