
require_relative "start.rb"
require 'rack'
require 'rack/handler/puma'

class Api 
  app = -> environment {
    request = Rack::Request.new(environment)
    response = Rack::Response.new

    if request.get? && request.path == "/wins"
      response.write("<ul>\n")
      response.content_type = "text/html; charset=UTF-8"
      wins = Start.new().listPlayers
      wins.each do |player|
        response.write "<li> #{player} </li>\n"
      end
      response.write "</ul>\n"  
    elsif request.get? && request.path == "/play"
      result = Start.new().play.result
      result.each do |line|
        response.write "#{line}\n"
      end
      response.write "\n"
    else
      response.content_type = "text/plain; charset=UTF-8"
      response.write("✅ Received a #{request.request_method} request to #{request.path}!")
    end
    response.finish
  }

  Rack::Handler::Puma.run(app, :Port => process.env.port, :Verbose => true)
  debugger
end
Api.new()