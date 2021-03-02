class Auction
  attr_reader :items

  def initialize
    @items = []
  end

  def add_item(item)
    @items << item
  end

  def item_names
    @items.map do |item|
      item.name
    end
  end

  def unpopular_items
    @items.find_all do |item|
      item.bids == {}
    end
  end

  def potential_revenue
    highest = []
    @items.each do |item|
      highest << item.current_high_bid
    end
    highest.compact.sum
  end

    def bidders
    names = []
    @items.map do |item|
      item.bids.map do |bid|
        names << bid[0].name
      end
    end.flatten.uniq
  end
end
