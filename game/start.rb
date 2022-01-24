require_relative "../database/warDatabase"
require_relative "deck.rb"
require_relative "game.rb"

class Start
    attr_reader  :listPlayers, :play, :game
    def initialize()
        @list = []
        @warData = WarDatabase.new()
        @warData.db.execute( "select * from warPlayers") {|item| @list << [item[0], item[1]]}
        @deck = nil
        @pick = nil
        @player1 = nil
        @player2 = nil
        @game = nil
    end

    def play()
        @deck = Deck.new()
        @pick = @list.clone.shuffle!
        @player1 = @pick[0]
        @player2 = @pick[1]
        @game = Game.new(@list, @warData, @deck, @player1, @player2)
    end

    def listPlayers
        result = []
        @list.each do |player| 
            result << "player #{player[0]} has #{player[1]} wins!"
        end
        return result
    end
end
