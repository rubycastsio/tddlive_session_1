require 'card'

class Deck
  RANKS = %i[ace two three four five six seven eight nine ten jack queen king]
  SUITS = %i[clubs diamonds hearts spades]

  def to_a
    RANKS.flat_map {|rank| SUITS.map {|suit| Card.new(rank, suit) } }
  end

  def [](index)
    to_a[index]
  end

end

