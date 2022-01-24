class Player 
    attr_reader :name, :wins
    
    def initialize(name, wins)
        @name = name
        @wins = wins
    end  
end