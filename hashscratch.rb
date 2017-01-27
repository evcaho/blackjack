class Cardhand
	DECKORDER = ["2clubs", "2spades", "2 hearts", "2 diamonds", "3clubs", "3spades", "3hearts", "3diamonds", "4clubs", "4spades", "4hearts", "4diamonds", "5clubs", "5spades", "5hearts", "5diamonds"] 
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
		firstindex = DECKORDER.index(hand1.max) 
		secondindex = DECKORDER.index(hand2.max) 
		if firstindex > secondindex
			puts "i used a constant and hand1 won!"
		else
			puts "I used a constant and hand2 won!"
		end

	end

end

hand = ["2clubs", "4clubs", "3clubs", "2 hearts", "5spades", ]
deck = ["2clubs", "2spades", "2 hearts", "2 diamonds", "3clubs", "3spades", "3hearts", "3diamonds", "4clubs", "4spades", "4hearts", "4diamonds", "5clubs", "5spades", "5hearts", "5diamonds"]

cardhand = Cardhand.new(hand, deck)

return_card = gets.chomp
puts cardhand.exchange(return_card, deck.sample)

#cardhand.compare_index(hand1, hand2)