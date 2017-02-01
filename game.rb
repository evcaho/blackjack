require './deck.rb'
require './card_hand.rb'

class Poker
	attr_accessor :deck, :hand
	def initialize(deck, hand)
		@deck = deck
		@hand = hand
	end

	def main
		puts "Player 1, what is your name?"
		player_1 = gets.chomp
		puts "Ok, let's deal. Type 'deal' when you're ready"
		input = gets.chomp
		if input == "deal"
		  puts "#{player_1}'s hand is #{my_hand}"
		end
		puts "what card do you want to return? if none, type 'none'"
		input = gets.chomp
		#if input = 

	end
end

deck = Deck.new()
computer_cards = Cardhand.new(deck.deal(5), deck)
player_cards = Cardhand.new(deck.deal(5), deck)
poker_game = Poker.new(deck, player_cards.hand)
puts poker_game.hand
return_card = gets.chomp
player_cards.exchange(return_card, deck.deal(1))
puts player_cards.hand


#puts "the computer's cards: #{computer_hand}"

#puts player_hand.compare(computer_hand)
#game = Poker.new(deck, hand)





#cardhand1 = Cardhand.new(hand1, deck)
#cardhand2 = Cardhand.new(hand2, deck)
#puts cardhand1.compare(cardhand2)