require 'byebug'
require 'sqlite3'

require_relative "../database/warDatabase"
class Game 
    attr_reader :result

    def initialize(list, wardata, deck, player1, player2)
        @list = list
        @warData = wardata
        @deck = deck
        @pick = @list.clone.shuffle!
        @player1 = player1
        @player2 = player2
        @game = true
        @result = []
        game()
    end

    def game()
        while (@game == true)
            if(@deck.totalCards == 52)
                endGame(@player1) 
            elsif(@deck.totalCards == 0)
                endGame(@player2)
            else
                currCard1 = @deck.p1Deck.pop
                currCard2 = @deck.p2Deck.pop
                turn(currCard1, currCard2)
            end
        end    
    end

    def turn(currCard1, currCard2, pile = nil)
        pile ||= [currCard1, currCard2]
        @result << "#{@player1[0]} has played #{currCard1.cost} of #{currCard1.suit}"
        @result << "#{@player2[0]} has played #{currCard2.cost} of #{currCard2.suit}"
        checker(currCard1, currCard2, pile)
    end

    def checker(currCard1, currCard2, pile)
        checker = ["A", "K", "Q", "J", "1", "9", "8", "7","6","5","4","3","2"]
        if(currCard1.cost == currCard2.cost)
            superWar(currCard1, currCard2, pile)
        else
            if(checker.index(currCard1.cost) < checker.index(currCard2.cost)) 
                @deck.p1Discard += pile 
                @result << "#{@player1[0]} takes #{pile.length} cards!"
            else
                @deck.p2Discard += pile
                @result << "#{@player2[0]} takes #{pile.length} cards!"
            end
        end
        @deck.shuffleCheck()
    end

    def superWar(currCard1, currCard2, pile = nil)
        @result << "A super war has been triggered!"
        pile ||= [currCard1, currCard2]
        first = currCard1
        second = currCard2
        i = 0
        while i <= 1
            if(@deck.p1Deck.count == 0)
                @deck.shuffleCheck()
                break if @deck.p1Deck.count == 0
            else
                first = @deck.p1Deck.pop
                pile << first
                i += 1
            end
        end
        i = 0
        while i <= 1
            if(@deck.p2Deck.count == 0)
                @deck.shuffleCheck()
                break if @deck.p2Deck.count == 0
            else
                second = @deck.p2Deck.pop
                pile << second
                i += 1
            end
        end
        turn(first, second, pile)
    end

    def endGame(winner)
        @result << winner[0] + " is the winner"
        @game = false
        @warData.increaseWins(winner)
        @list[winner[0].to_i - 1][1] += 1
        return @result 
    end
end

