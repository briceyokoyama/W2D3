require_relative 'card'
require 'byebug'

class Deck

  #♠️♣️♥️♦️
  attr_reader :cards
  
  def initialize
    @cards = []
    self.populate
    self.shuffle
  end

  def populate
    Card::SUITS.each do |suit|
      Card::VALUES.each do |val|
        self.cards << Card.new(val, suit)
      end
    end
  end

  def shuffle
    self.cards.shuffle!
  end

end