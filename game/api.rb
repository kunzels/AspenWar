require 'socket'
require_relative "start.rb"
require 'byebug'

class Api 
server = TCPServer.new(1337)
  loop do
    client = server.accept
    client.puts "Welcome to war, type play, wins, or close"
    input = client.gets.chomp
    if(input == 'play')
      result = Start.new().play.result
      client.puts result
    elsif(input == 'wins')
      wins = Start.new().listPlayers
      client.puts wins
    elsif(input == 'close')
      client.close
    else
      client.puts "Invalid selection"
    end
    client.puts "Thanks for playing"
    client.close
  end
end
