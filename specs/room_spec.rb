require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../guest.rb')

class RoomTest < MiniTest::Test

  def setup
    @room = Room.new("Room 1", 2, [])
  end

  def test_room_name
    assert_equal("Room 1", @room.name)
  end

  def test_room_capacity
    assert_equal(2, @room.capacity)
  end

  def test_room_guest_array
    assert_equal([], @room.guest_array)
  end

  def test_guest_count
    assert_equal(0, @room.guest_count)
  end

  def test_add_guest_to_room
    guest1 = Guest.new("Bill")
    @room.add_guest_to_room(guest1)
    assert_equal(1, @room.guest_count)
  end

  def test_add_guest_to_room__2
    guest1 = Guest.new("Chris")
    @room.add_guest_to_room(guest1)
    assert_equal("Chris", @room.guest_array[0].name)
  end

  def test_remove_guest_from_room
    guest1 = Guest.new("Bill")
    guest2 = Guest.new("Bob")
    @room.add_guest_to_room(guest1)
    @room.add_guest_to_room(guest2)
    @room.remove_guest_from_room(guest1)
    assert_equal(1, @room.guest_count)
  end

  def test_empty_room
    guest1 = Guest.new("Bill")
    guest2 = Guest.new("Bob")
    @room.add_guest_to_room(guest1)
    @room.add_guest_to_room(guest2)
    @room.empty_room
    assert_equal(0, @room.guest_count)
  end

end
