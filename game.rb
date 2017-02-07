require './deck.rb'
require './card_hand.rb'

class Blackjack
	attr_accessor :deck, :hand, :dealer_hand
	def initialize(deck, hand, dealer_hand)
		@deck = deck
		@hand = hand
		@dealer_hand = dealer_hand
	end

	def total
		player_cards.hand_add(hand)
	end

	def main(hand, dealer_cards, player_cards)
		puts "Player 1, what is your name?"
		player_1 = gets.chomp
		puts "Ok, let's deal. Type 'deal' when you're ready"
		input = gets.chomp
		if input == "deal"
		  puts "#{player_1}'s hand is #{hand}"
		  total = player_cards.hand_add(hand)
		  puts total
		end
		puts "Do you want to stay or hit?"
		input = gets.chomp
        while input == "hit"
			hand.push(deck.deal(1))
			total = player_cards.hand_add(hand)
			puts total
			puts "#{player_1}'s hand is #{hand}"
			if total > 21
				puts "Bust! You lose"
				exit
			end
			puts "Do you want to stay or hit?"
			input = gets.chomp
		end
		if input == "stay"
			total = player_cards.hand_add(hand)
			computer_total = dealer_cards.hand_add(dealer_hand)
			player_cards.compare(total, computer_total)
		end

#player_total = card_hand.hand_add(card_hand)


	end
end

deck = Deck.new()
dealer_cards = Cardhand.new(deck.deal(2), deck)
dealer_hand = dealer_cards.hand
player_cards = Cardhand.new(deck.deal(2), deck)
player_hand = player_cards.hand
blackjack = Blackjack.new(deck, player_hand, dealer_hand)
puts blackjack.main(player_hand, dealer_cards, player_cards)


#player_total = card_hand.hand_add(card_hand)
