require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'

class RoomTest < Minitest::Test
  def setup
    @room = Room.new(:bedroom, 10, 13)
  end
  def test_that_when_call_category_return_bedrum_and_instance

    assert_instance_of Room, @room
    assert_equal :bedroom, @room.what_category
  end
  def test_that_when_call_area_to_area
    assert_equal 130, @room.area
  end
end
