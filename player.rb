class Player
	attr_accessor :card_hand
	
	def initialize(cards, deck)
		@cards = cards
		@deck = deck
		#pass in a card_hand object
	end



end

cards = [1,2,3,4,5]
deck = [1,2,3,4,5,6,7,8]
player1 = Player.new(cards,deck)
puts "do you want to return any cards?"
response = gets.chomp
#player1.return(response.to_i)


