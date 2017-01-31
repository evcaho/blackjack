class Deck
	def initialize
		@deck_array = generate
	end

	def generate
		temp_array = []
		cards_number = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
		cards_suit = ["cl","sp", "<3", "<>"]
		cards_number.each do |num|
			cards_suit.each do |suit|
				temp_array.push("#{num}#{suit}")
			end
		end
		temp_array
	end

	def deal(card_no)
		hand_array = []
		(card_no.to_i).times do
			dealt_card = @deck_array.sample
			 @deck_array.delete(dealt_card)
			 hand_array.push(dealt_card)
		end
		hand_array
	end

end


#new_deck = Deck.new()
#hand = new_deck.deal(5)





#second_hand = choose round1_array.by index + 1, delete, then run deal 



#puts deck.generate(cards_number, cards_suit)