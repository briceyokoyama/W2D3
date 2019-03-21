class Card
  attr_reader :value, :suit

  SUITS = [
    :hearts,
    :spades,
    :clubs,
    :diamonds  
  ]

  VALUES = (1..13).to_a

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def ==(other_card)
    self.value == other_card.value
  end

end