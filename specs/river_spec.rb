require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../river")


class RiverTest < MiniTest::Test

    def setup()
        @river = River.new("River Tay")
    end

    def test_fish_count()
        assert_equal(3, @river.fish_count())
    end

end