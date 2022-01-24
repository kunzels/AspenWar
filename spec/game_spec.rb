require 'rspec'
require_relative '../game/card.rb'
require_relative '../game/player.rb'
require_relative '../game/deck.rb'
require_relative '../game/game.rb'
require_relative '../game/start.rb'


RSpec.describe Card do
    subject(:card) {Card.new("10","C")}
    describe '#initialize' do
            it "should configure the card objects cost" do
                expect(card.cost).to eq("10")
            end
            it "should configure the card objects suit" do
                expect(card.suit).to eq("C")
            end
    end
end

RSpec.describe Player do
    subject(:player) {Player.new("John",20)}
    describe '#initialize' do
            it "should configure the player objects name" do
                expect(player.name).to eq("John")
            end
            it "should configure the player objects wins" do
                expect(player.wins).to eq(20)
            end
    end
end

RSpec.describe Deck do
    subject(:deck) {Deck.new()}
    describe '#initialize' do
            it "should create a 52 card deck" do
                expect(deck.deck.length).to eq(52)
            end
            it "should configure the p1 deck" do
                expect(deck.p1Deck.length).to eq(26)
            end
            it "should configure the p2 deck" do
                expect(deck.p2Deck.length).to eq(26)
            end
            it "should not allow the same cards in different decks" do
                expect(deck.p2Deck.include?(deck.p1Deck[0])).to eq(false)
                expect(deck.p1Deck.include?(deck.p2Deck[0])).to eq(false)
            end
            it "Should format the suits properly" do
                expect(["Clubs", "Diamonds", "Spades", "Hearts"]).to include(deck.p2Deck[2].suit)
            end
    end
    describe "#shuffleCheck" do
        it "should pass discards to deck on shuffle" do
            deck.p1Discard = deck.p1Deck
            held = deck.p1Deck.clone
            deck.p1Deck = []
            deck.shuffleCheck()
            expect(deck.p1Deck.length).to eq(held.length)
        end
        # could use more logic
        it "should shuffle the cards" do
            deck.p1Discard = deck.p1Deck
            held = deck.p1Deck.clone
            deck.p1Deck = []
            deck.shuffleCheck()
            expect(deck.p1Deck).to_not eq(held)
        end
        it "Should not shuffle if the draw deck is not empty" do
            held = deck.p1Deck.clone
            deck.shuffleCheck()
            expect(held).to eq(deck.p1Deck)
        end
    end
end

RSpec.describe Game do
    subject(:start) {Start.new()}
    describe "#turn" do
        it "sshould choose a pile if there is one, or create a pile if there is not." do
            start.game.turn("4c","10c", ["5c","10c"])
            expect(game.pile).to eq(52)
        end
    end
end


