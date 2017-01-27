require './deck.rb'

class Cardhand
	attr_accessor :hand
	def initialize(hand, deck)
		@hand = hand
		@deck = deck
	end

	def exchange(takeoutcard, putincard)
		if @hand.include?(takeoutcard)
			puts "yes, you have that card"
			 @hand.delete(takeoutcard)
			 @deck.push(takeoutcard)
			 @hand.push(putincard)
			@deck.delete(putincard)
		else
			puts "You don't own card"
		end
		@hand
	end

	def compare_index(hand1, hand2)
		firstindex = @deck.index(hand1.max)
		secondindex = @deck.index(hand2.max) 
		if firstindex > secondindex
			puts "i used a constant and hand1 won!"
		else
			puts "I used a constant and hand2 won!"
		end

	end

end

deck = Deck.new()

cardhand1 = Cardhand.new(deck.deal(5), deck)
cardhand2 = Cardhand.new(deck.deal(5), deck)
puts cardhand1.hand
puts cardhand2.hand
cardhand1.compare_index(cardhand1, cardhand2)

#dont_want = gets.chomp
#puts cardhand.exchange(dont_want, deck.deal(1))
