class Card < Struct.new(:rank, :suit)
  def to_s
    "#{rank.capitalize} of #{suit.capitalize}"
  end
end

