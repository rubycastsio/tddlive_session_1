require 'test_helper'
require 'deck'

describe Deck do
  subject { Deck }

  it "has 13 ranks" do
    assert subject::RANKS.count == 13, "must have 13 ranks"
  end

  it "has 4 suits" do
    assert subject::SUITS.count == 4, "must have 4 suits"
  end

  it "has a to_a method" do
    assert subject.new.respond_to?(:to_a), "Deck must have a to_a method"
  end

  it "behaves like an array for [] access" do
    subject.new[0] == "Ace of Clubs"
  end


  describe "#to_a" do
    subject { Deck.new.to_a }

    it "has 52 cards" do
      assert subject.count == 52, "Deck#to_a must have 52 cards"
    end

    it "is a Card object" do
      assert subject[0].instance_of?(Card), "must be of Card objects"
    end

    it "has at least 4 queens" do
      assert subject.select {|card| card.rank == :queen }.count >= 4, "must have at least 4 kings"
    end

  end
end
