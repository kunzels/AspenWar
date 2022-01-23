require 'rspec'
require_relative '../game/game'

RSpec.describe Game do
    subject(:game) {Game.new()}
    describe '#initialize' do
            it "should have even cards distributed" do
                expect(game.p2Deck.length).to eq(game.p1Deck.length)
            end

            it "should populate the list with 9 players" do
                expect(game.list.length).to eq(9)
            end
            it "should have a DB" do
                expect(@warData).to_not eq(nil)
            end
    end

    describe "#game" do 

    end
end
