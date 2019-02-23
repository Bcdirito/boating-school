class BoatingTest
    attr_reader :student, :test_name, :status, :teacher

    @@all = []

    def initialize(student:, test_name:, test_status:, teacher:)
      @student = student
      @test_name = test_name
      @test_status = test_status
      @teacher = teacher
      @@all << self
    end

    def self.all
      @@all
    end
end
