require 'test_helper'
require 'card'

describe Card do
  it "has a rank method" do
    assert Card.instance_methods.include?(:rank), "has a rank method"
  end

  it "has a suit method" do
    assert Card.instance_methods.include?(:suit), "has a suit method"
  end

  describe "#to_s" do
    it "capitalizes the values" do
      assert Card.new(:ace, :spades).to_s == "Ace of Spades", "must capitalizes its values rank and suit"
    end
  end
end
