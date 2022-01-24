
<h1> War </h1>

A basic ruby implementation of the card game War. This project was created in ruby version 2.7.2. It utilizes sqlite3 as a simple database, and there is some light testing added utilizing rspec. A docker image has been created to run this program without the need for language installations. 

<h1> Goals for this project </h1>

* Create a RESTful service with two endpoints:
* An endpoint to start a game. Two simulated players will play out the game.
* An endpoint to get lifetime wins for each player stored in a database.
* You should include some basic tests along with the application code.

<h1> To setup and run </h1>

1. Navigate to the war folder in the terminal.
2. Ensure ruby version 2.7.2 or higher is installed.
3. Run bundle install in the console to install relevant gems.
4. Run ruby ./game/api.rb
5. Open a browser and navigate to http://localhost:1337/wins or http://localhost:1337/play

<h1> Docker Alternative </h1>
A working docker image has been included. Assuming docker is set up, you should be able to enter the command 'docker run -it -p 8080:1337 war:latest' to run, and then check http://localhost:8080/wins and http://localhost:8080/play

<h1> To run tests </h1>

1. Navigate to the war folder in the terminal.
2. Ensure setup from the above section is complete.
4. Run bundle exec rspec in the terminal.


Ruby installation documentation.   
* https://www.ruby-lang.org/en/documentation/installation/

Sqlite3 documentation, specific to ruby. Some more references are linked here as well. Ruby version >= 1.8.7 is required.
* https://rubydoc.info/gems/sqlite3/1.3.8/frames

Byebug is included. This would be removed on a production build, but it is included if you'd like to use it. Simply require 'byebug' at the top of a file, and then place debugger on a line. See documentation here. Ruby version >= 2.4.0 is required.
* https://github.com/deivid-rodriguez/byebug

Some light tests were implemented using Rspec. No ruby version requirement.
* https://rspec.info/documentation/3.10/rspec-core/

Rack and puma are used for the local endpoints, documentation is found here. 
* https://www.rubydoc.info/github/rack/rack/

<h1> Further Improvements </h1>
There are a ton of front end implementation ideas that can be done to really visualize the game being played beyond some logs, and I would implement things like multiple players beyond two, perhaps other variations or completely different card games. There is already a foundation for the deck and cards and I think that could be fun.  I enjoyed trying to do this without a rails and react foundation that I am more accustomed to, but if I were to redo this I would have used rails at the minimum, with a postgres database. Also, more tests could be created.