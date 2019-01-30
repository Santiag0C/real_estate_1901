require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require './lib/house'
require 'pry'

class HouseTest < Minitest::Test
  def setup
    @house = House.new(400000, "123 sugar lane")
    @room1 = Room.new(:bedroom, 10, 13)
    @room2 = Room.new(:bedroom, 11, 15)
  end
##########
  def test_assert_instance
    assert_instance_of House, @house
  end
##########
  def test_the_price
    assert_equal 400000, @house.price
  end
##########
  def test_the_address
    assert_equal "123 sugar lane", @house.address
  end
##########
  def test_rooms
    assert_equal [], @house.rooms_i
  end

  def test_add_rooms

    assert_equal [@room1, @room2], @house.add_rooms(@room1, @room2)
    #assert_equal [@room1, @room2], @house.add_rooms(@room2)
    #@house.add_rooms(@room2)
    #assert_equal [@room1, @room2], @house.add_rooms
  end
end
