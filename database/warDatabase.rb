require 'sqlite3'

class WarDatabase
    attr_reader :db
    
    def initialize()
        @db = SQLite3::Database.open 'War.db'
        rows = @db.execute <<-SQL
            create table if not exists warPlayers (
            playerName text,
            totalWins int,
            UNIQUE(playerName));
        SQL
        i = 1 
        
        9.times do 
            @db.execute("INSERT OR IGNORE INTO warPlayers (playerName, totalWins) VALUES (?, ?)", [i.to_s, 0])  
            i += 1
        end   
    end

    def increaseWins(winner)
        @db.execute("UPDATE warPlayers SET totalWins=#{winner[1] + 1} WHERE playerName=#{winner[0]}")
    end
end