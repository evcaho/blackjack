require './deck.rb'

class Cardhand
	DECKORDER = ["2cl", "2sp", "2<3", "2<>", "3cl", "3sp", "3<3", "3<>", "4cl", "4sp", "4<3", "4<>", "5cl", "5sp", "5<3", "5<>", "6cl", "6sp", "6<3", "6<>", "7cl", "7sp", "7<3", "7<>", "8cl", "8sp", "8<3", "8<>", "9cl", "9sp", "9<3", "9<>", "10cl", "10sp", "10<3", "10<>", "Jcl", "Jsp", "J<3", "J<>", "Qcl", "Qsp", "Q<3", "Q<>", "Kcl", "Ksp", "K<3", "K<>", "Acl", "Asp", "A<3", "A<>"] 

	attr_accessor :hand

	def initialize(hand, deck)
		@hand = hand
		@deck = deck
	end

	def exchange(takeoutcard, putincard)
		if @hand.include?(takeoutcard)
			puts "Card received. Dispensing new card. New hand:"
			 @hand.delete(takeoutcard)
			 @deck.generate.push(takeoutcard)
			 @hand.push(putincard)
			@deck.generate.delete(putincard)
		else
			puts "You don't own card"
		end
		@hand
	end

	def compare(other)
		puts self.hand.inspect
		puts other.hand.inspect
		self_values = self.hand.collect { |card| DECKORDER.index(card)}
		other_values = other.hand.collect { |card| DECKORDER.index(card)}
		if self_values.max > other_values.max
			#DECKORDER[self_values.max]
			-1
		elsif other_values.max > self_values.max 
			DECKORDER[other_values.max]
			1
		else
			0
		end
	end


end

deck = Deck.new()
hand = deck.deal(5)
computer = deck.deal(5)
card_hand = Cardhand.new(hand, deck)
computer_hand = Cardhand.new(computer, deck)
puts card_hand.compare(computer_hand)

#exchange
#response = gets.chomp
#new_card = deck.deal(1)
#card_hand.exchange(response, new_card)
#puts card_hand.hand


