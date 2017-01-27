#require './card_hand.rb'
require './deck.rb'

def Game
	def initialize(deck)
		@deck = deck
	end

	def main
		puts "Player 1, what is your name?"
		player_1 = gets.chomp
		puts "Player 2, what is your name?"
		player_2 = gets.chomp
		puts "Ok, let's deal. Player 1 is up first."
		puts "#{player_1}'s hand is #{@deck.deal(5)}"
	end
end
#puts "Player 1, what is your name?"
#player_1 = gets.chomp
#puts "Player 2, what is your name?"
#player_2 = gets.chomp
deck = Deck.new()
game = Game.new(deck)
game.main
