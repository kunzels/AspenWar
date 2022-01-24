require_relative 'card.rb'

class Deck
    attr_reader :deck, :shuffleCheck, :p1Deck, :p2Deck, :totalCards
    attr_accessor :p1Discard, :p2Discard, :p1Deck, :p1Discard
    def initialize()
            @p1Deck = []
            @p2Deck = []
            @p1Discard = []
            @p2Discard = []
            @deck = []
            cards = ["2c", "3c","4c","5c","6c","7c","8c","9c","10c","Jc","Qc","Kc","Ac",
                    "2s", "3s","4s","5s","6s","7s","8s","9s","10s","Js","Qs","Ks","As",
                    "2d", "3d","4d","5d","6d","7d","8d","9d","10d","Jd","Qd","Kd","Ad",
                    "2h", "3h","4h","5h","6h","7h","8h","9h","10h","Jh","Qh","Kh","Ah"]
            cards.each do |card|
                formatter = {"d" => "Diamonds", "c" => "Clubs", "h" => "Hearts", "s" => "Spades"}
                @deck << Card.new(card[0..-2], formatter[card[-1]])
            end
            @deck = @deck.shuffle!
            @p1Deck = @deck[0..25]
            @p2Deck = @deck[26..52]
            @totalCards = @p1Deck.count + @p1Discard.count
    end

    def shuffleCheck()
        if(@p1Deck.empty? && @p1Discard.count > 0)
            @p1Deck += @p1Discard
            @p1Discard = []
            @p1Deck.shuffle!
        end
        if(@p2Deck.empty? && @p2Discard.count > 0)
            @p2Deck += @p2Discard
            @p2Discard = []
            @p2Deck.shuffle!
        end
        @totalCards = @p1Deck.count + @p1Discard.count
    end
end
