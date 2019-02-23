require_relative '../config/environment'

# Declare your variables here~~~
brian = Student.new("brian", "dirito")
jason = Student.new("jason", "mraz")
nina = Student.new("nina", "simone")

prince = Instructor.new("prince")
helen = Instructor.new("helen")
arren = Instructor.new("arren")

brian_first_test = BoatingTest.new(brian, "first test", "failed", prince)
brian_second_test = BoatingTest.new(brian, "second test", "passed", arren)
nina_first_test = BoatingTest.new(nina, "first test", "passed", prince)

# don't remove!
binding.pry
0
