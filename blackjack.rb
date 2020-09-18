class Human_Player
    attr_accessor :name, :bankroll, :hand

    def initialize name
        @name = name
        @bankroll = 100
        @hand = []
    end
    def add_cards 
        total = 0
        hand.each do |card|
            total += card.value
        end
        total
    end
end

class House
    attr_accessor :name, :bankroll, :hand
    
    def initialize name
        @name = name
        @bankroll = 10000
        @hand = []
    end
    def add_cards 
        total = 0
        hand.each do |card|
            total += card.value
        end
        total
    end
end

deck = []

class Card
    attr_reader :value

    def initialize value
        @value = value
    end
end

one = Card.new 1
two = Card.new 2
three = Card.new 3
four = Card.new 4
five = Card.new 5
six = Card.new 6
seven = Card.new 7 
eight = Card.new 8
nine = Card.new 9
ten = Card.new 10
jack = Card.new 10
queen = Card.new 10
king = Card.new 10
ace = Card.new 11

#4 times: #create an array of each type of cards
4.times do
    deck.push(one, two, three, four, five, six, seven, eight, nine, ten, jack, queen, king, ace)
    deck = deck.shuffle
end


dealer = House.new "Jack"
p "Welcome to Black Jack, I'm #{dealer.name}"
p "What's your name, pal?"
player = Human_Player.new gets.chomp

p "Hi, #{player.name}, let's play."
"Shuffling... Dealing two cards."

player.hand.push(deck.pop())
dealer.hand.push(deck.pop())
player.hand.push(deck.pop())
dealer.hand.push(deck.pop())

p "Your cards are: "
p "#{player.hand} which adds to #{player.add_cards}"
p "Dealer cards are: "
p "#{dealer.hand} which adds to #{dealer.add_cards}"

if player.add_cards == dealer.add_cards
    p "Tie!"
elsif player.add_cards > dealer.add_cards
    p "You win!"
    dealer.bankroll -= 10
    player.bankroll += 10
    p "You now have: $#{player.bankroll}"
else
    p "Dealer wins!"
    dealer.bankroll += 10
    player.bankroll -= 10
    p "You now have: $#{player.bankroll}"
end