class River

  attr_reader :name

    def initialize(name)
      @name = name
      @fish = [@fish1]
    end

    def number_of_fish_in_river
      return @fish.count
    end

    def add_fish_to_river(fish)
      return @fish.push(fish)
    end

    def fish_eaten_from_river(fish)
      return @fish.delete(fish)
    end
end
