class Card
    attr_reader :cost, :suit, :checker
    def initialize(cost, suit)
        @cost = cost
        @suit = suit
        @card = cost + suit
    end

    def showCard(card)
        return "has played #{card.cost} of #{card.suit}"
    end

    def checker(c1, c2)
        if(v1 == v2)
            return "super"
            superWar(currCard1, currCard2, pile)
        else
            if(checker.index(value1) < checker.index(value2)) 
                @deck.p1Discard += pile 
                @result << "#{@player1[0]} takes #{pile.length} cards!"
            else
                @deck.p2Discard += pile
                @result << "#{@player2[0]} takes #{pile.length} cards!"
            end
        end
    end
end