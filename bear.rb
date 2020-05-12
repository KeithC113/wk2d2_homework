class Bear

attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def number_of_fish_eaten()
    return @stomach.count()
  end

  def eats_fish(fish)
    return @stomach.push(fish)
  end

  def hear_me_roar()
    return "Roar"
  end
end
