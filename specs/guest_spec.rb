require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')


class GuestTest < MiniTest::Test

  def setup
    @guest = Guest.new("Colin")
  end

  def test_guest_name
    assert_equal("Colin", @guest.name)
  end

end
