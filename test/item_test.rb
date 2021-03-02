require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'
class ItemTest < Minitest::Test

  def test_it_exists_and_has_attributes
    item1 = Item.new('Chalkware Piggy Bank')
    assert_instance_of Item, item1
    assert_equal "Chalkware Piggy Bank", item1.name

    item2 = Item.new('Bamboo Picture Frame')
    assert_equal "Bamboo Picture Frame", item2.name
  end

  def test_it_starts_with_no_bids
    item1 = Item.new('Chalkware Piggy Bank')
    assert_equal ({}), item1.bids
  end
end
