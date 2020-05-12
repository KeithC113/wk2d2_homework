require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')

class RiverTest < MiniTest::Test

  def setup()
    @river = River.new("Amazon")
    @fish1 = Fish.new("Tom")
    @fish2 = Fish.new("Dick")
    @fish3 = Fish.new("Harry")
  end

# => 1
  def test_can_create_river
    assert_equal(River,@river.class)
  end

# => 2
  def test_river_name
    assert_equal("Amazon",@river.name)
  end

# => 3
  def test_number_of_fish_in_river
    assert_equal(1,@river.number_of_fish_in_river)
  end

# =>4
  def test_add_fish_to_river
    @river.add_fish_to_river(@fish2)
    assert_equal(2,@river.number_of_fish_in_river)
  end

# => 5
  def test_fish_eaten_from_river
    @river.fish_eaten_from_river(@fish1)
    assert_equal(1,@river.number_of_fish_in_river)
  end

end
