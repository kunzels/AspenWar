
<h1> War </h1>

A small command-line program designed to simulate games of the popular card game War. The project was created in ruby version 2.7.2. It utilizes sqlite3 as a simple database. There is some light testing added utilizing rspec.

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
With more time I would finish up the docker image, and find an appropriate solution for the cloud upload. There are a ton of front end implementation ideas that can be done to really visualize the game being played beyond some logs, and I would implement things like multiple players beyond two, perhaps other variations or completely different card games. There is already a foundation for the deck and cards and I think that could be fun.  I enjoyed trying to do this without a rails and react foundation that I am more accustomed to, but if I were to redo this I would have used rails at the minimum, with a postgres database. I think this pathing would have played nicer with the docker file and cloud uploading. 