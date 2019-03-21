require "byebug"


class Hand
  attr_reader :cards

  # HAND_STRENGTH = {
  #   HIGH_CARD => 1,
  #   PAIR => 2,
  #   TWO_PAIR => 3,
  #   THREE_OF_KIND => 4,
  #   STRAIGHT => 5,
  #   FLUSH => 6,
  #   FULL_HOUSE => 7,
  #   FOUR_OF_KIND => 8,
  #   STRAIGHT_FLUSH => 9
  # }

  def initialize
    @cards = []
  end

  def draw_cards(num, deck)
    num.times do
      card = deck.cards.shift
      self.cards << card
    end
    
    determine_hand
  end


  def determine_hand
    value_hash = Hash.new(0)
    debugger
    self.cards.each {|card| value_hash[card.value] += 1}
    value_hash
  end

end