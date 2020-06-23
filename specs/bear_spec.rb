require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../bear")
require_relative("../river")

class BearTest < MiniTest::Test
    
    def setup()
    @bear = Bear.new("Yogi", "Grizzly")
    @river = River.new("River Tay")
    end

    def test_roar()
        assert_equal("Roar!", @bear.roar())
    end

    def test_food_count()
        assert_equal(0, @bear.food_count())
    end 

    def test_bear_eats_fish()
        @bear.bear_eats_fish(@river)
        assert_equal(1, @bear.food_count())
        assert_equal(2, @river.fish_count())
    end

end