class SlackChannel
  def initialize(name)
    @name = name
  end

  attr_reader :name
end

class Student
  def initialize(name)
    @name = name
  end

  attr_reader :name
end

class Membership
  def initialize(student, slack_channel)
    @student = student
    @slack_channel = slack_channel
  end

  attr_reader :student, :slack_channel
end

fred = Student.new('Fred')
george = Student.new('George')
appreciations = SlackChannel.new('appreciations')
blue_july = SlackChannel.new('blue-july2017')

memberships = [
  Membership.new(fred, appreciations),
  Membership.new(george, appreciations),
  Membership.new(fred, blue_july)
]

# puts memberships[0].slack_channel.name
