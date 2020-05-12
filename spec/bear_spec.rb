require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')

class BearTest < MiniTest::Test

  def setup()
    @bear = Bear.new("Yogi", "Grizzly")
  end

# => 1
  def test_can_create_bear()
    assert_equal(Bear, @bear.class())
  end

# => 2
  def test_bear_name()
    assert_equal("Yogi",@bear.name)
  end

# => 3
  def test_bear_type()
    assert_equal("Grizzly",@bear.type)
  end
# => 4
  def test_number_of_fish_in_stomach()
    assert_equal(0,@bear.number_of_fish_eaten)
  end

# => 5
  def test_bear_eats_fish_from_river()
    @bear.eats_fish(@fish1)
    assert_equal(1,@bear.number_of_fish_eaten)
  end

# => 6
  def test_bear_roar()
    assert_equal("Roar",@bear.hear_me_roar())
  end

end
