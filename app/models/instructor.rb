class Instructor
  attr_reader :name

  @@all = []

  def initialize(name:)
    @name = name
    @@all << self
  end

  def fail_student(student_name, test_name)
    test = BoatingTest.all.find {|t| t.student.full_name == student_name && t.test_name == test_name}

    if test != nil
      test.status = "failed"
    end
  end

  def pass_student(student_name, test_name)
    test = BoatingTest.all.find {|t| t.student.full_name == student_name && t.test_name == test_name}

    if test != nil
      test.status = "passed"
    end
  end

  def boating_tests
    BoatingTest.all.select {|t| t.teacher.name == self.name}
  end
end
