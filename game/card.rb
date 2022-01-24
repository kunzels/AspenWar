class Card
    attr_reader :cost, :suit
    def initialize(cost, suit)
        @cost = cost
        @suit = suit
    end
end