class Room

  attr_reader :name, :capacity, :guest_array

  def initialize(name, capacity, guest_array)
    @name = name
    @capacity = capacity
    @guest_array = guest_array
  end

  def guest_count
    return @guest_array.length
  end

  def add_guest_to_room(guest)
    @guest_array.push(guest)
  end

  def remove_guest_from_room(guest)
    @guest_array.delete(guest)
  end

  def empty_room
    @guest_array = []
  end


end
