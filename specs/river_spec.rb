require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../river")
require_relative("../bear")


class RiverTest < MiniTest::Test

    def setup()
        @river = River.new("River Tay")
        @bear = Bear.new("Yogi", "Grizzly")
    end

    def test_fish_count()
        assert_equal(3, @river.fish_count())
    end

    def test_remove_fish()
        @river.remove_fish()
        assert_equal(2, @river.fish_count())
    end
end