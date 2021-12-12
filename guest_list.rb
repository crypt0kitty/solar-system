class Guest_Type
  attr_reader :name
  def initialize(name)
    @name = name
  end
  def summary
    return "Your alien's name is #{name}!"
  end
end
