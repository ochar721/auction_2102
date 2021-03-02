require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'
require './lib/attendee'
require './lib/auction'

class AuctionTest < Minitest::Test
  def test_it_exists_and_has_attributes
    auction = Auction.new
    assert_instance_of Auction, auction
  end

  def test_it_starts_with_no_items
    auction = Auction.new
    assert_equal [], auction.items
  end

  def test_it_can_add_items
    item1 = Item.new('Chalkware Piggy Bank')
    item2 = Item.new('Bamboo Picture Frame')
    attendee = Attendee.new(name: 'Megan', budget: '$50')
    auction = Auction.new

    auction.add_item(item1)
    auction.add_item(item2)

    assert_equal [item1, item2], auction.items
    end

  def test_it_has_item_names
    item1 = Item.new('Chalkware Piggy Bank')
    item2 = Item.new('Bamboo Picture Frame')
    attendee = Attendee.new(name: 'Megan', budget: '$50')
    auction = Auction.new

    auction.add_item(item1)
    auction.add_item(item2)
    assert_equal ["Chalkware Piggy Bank", "Bamboo Picture Frame"], auction.item_names
  end
end
