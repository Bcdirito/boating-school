class Student
  attr_reader :first_name, :last_name
  attr_accessor :full_name

  @@all  = []

  def initialize(first_name:, last_name:)
    @first_name = first_name
    @last_name = last_name
    @full_name = full_name
    @all << self
  end

  def self.all
    @@all
  end

  def self.full_names
    self.all.map {|s| s.full_name}
  end

  def self.find_student(full_name)
    self.all.find {|s| s.full_name == full_name}
  end

  def add_boating_test(instructor, test_name, test_status)
    new_test_attributes = {student: self, instructor: instructor, test_name: test_name, teacher: instructor}
    BoatingTest.new(new_test_attributes)
  end

end
