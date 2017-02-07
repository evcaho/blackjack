class Cardhand
	DECKVALUE = {"2cl" => 2, "2sp" => 2, "2<3" => 2, "2<>" => 2, "3cl" => 3, "3sp" => 3, "3<3" => 3, "3<>" => 3, "4cl" => 4, "4sp" => 4, "4<3" => 4, "4<>" => 4 , "5cl" => 5, "5sp" => 5, "5<3" => 5, "5<>" => 5, "6cl" => 6, "6sp" => 6, "6<3" => 6, "6<>" => 6, "7cl" => 7, "7sp" => 7, "7<3" => 7, "7<>" => 7, "8cl" => 8, "8sp" => 8, "8<3" => 8, "8<>" => 8, "9cl" => 9, "9sp" => 9, "9<3" => 9, "9<>" => 9, "10cl" => 10, "10sp" => 10, "10<3" => 10, "10<>" => 10, "Jcl" => 10, "Jsp" => 10, "J<3" => 10, "J<>" => 10, "Qcl" => 10, "Qsp" => 10, "Q<3" => 10, "Q<>" => 10, "Kcl" => 10, "Ksp" => 10, "K<3" => 10, "K<>" => 10, "Acl" => 11, "Asp" => 11, "A<3" => 11, "A<>" => 11}
	attr_accessor :hand

	def initialize(hand, deck)
		@hand = hand
		@deck = deck
	end

	def hit(putincard)
		puts "Dispensing new card. New hand:"
		@hand.push(putincard)
		@deck.generate.delete(putincard)
		@hand
	end

	def hand_add(hand)
		puts hand
		hand_total = 0
		self.hand.flatten.each do |card|
			puts card
			card_value = DECKVALUE[card]
			hand_total = card_value.to_i + hand_total
		end
		hand_total 
	end

	def compare(player_total, computer_total)
		puts player_total
		if player_total <= 21
			if player_total > computer_total
				puts "It's #{player_total} to the dealer's #{computer_total} and you win!"
			end
			if computer_total > player_total
				puts "It's #{player_total} to the dealer's #{computer_total} and you lose!"
			end
		else
			puts "busted"
		end
		"thanks for playing"
	end
end

#deck = Deck.new()
#hand = deck.deal(2)
#computer = deck.deal(2)
#card_hand = Cardhand.new(hand, deck)
#computer_hand = Cardhand.new(computer, deck)
#player_total = card_hand.hand_add(card_hand)
#card_hand.hand = card_hand.hand.push(deck.deal(1))
#puts card_hand.hand
#player_total = card_hand.hand_add(card_hand)
#computer_total = computer_hand.hand_add(computer_hand)
#player_total = card_hand.hand_add(card_hand)
#card_hand.compare(player_total, computer_total)

