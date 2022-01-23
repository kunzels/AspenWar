class Card
    attr_reader :cost, :suit
    def initialize(cost, suit)
        @cost = cost
        @suit = suit
        @card = cost + suit
    end

end