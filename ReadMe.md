
<h1> War </h1>

A small command-line program designed to simulate games of the popular card game War. The project was created in ruby version 2.5.1p57, and requires ruby version >= 2.4.0. It utilizes sqlite3 as a simple database. There is some light testing added utilizing rspec.

<h1> Goals for this project </h1>

* Create a RESTful service with two endpoints:
* An endpoint to start a game. Two simulated players will play out the game.
* An endpoint to get lifetime wins for each player stored in a database.
* You should include some basic tests along with the application code.

<h1> To setup and run </h1>

1. Navigate to the war folder in the terminal.
2. Ensure ruby version 2.4.0 or higher is installed.
3. Run bundle install in the console to install relevant gems.
4. Run ruby ./game/api.rb
5. Open a browser and navigate to http://localhost:1337/wins or http://localhost:1337/play

<h1> To run tests </h1>

1. Navigate to the war folder in the terminal.
2. Ensure setup from the above section is complete.
4. Run bundle exec rspec in the terminal.

If you would like to look into the code behind ruby's shuffle implementation, this is a good start!
https://hashrocket.com/blog/posts/do-the-shuffle


Ruby installation documentation.   
* https://www.ruby-lang.org/en/documentation/installation/

Sqlite3 documentation, specific to ruby. Some more references are linked here as well. Ruby version >= 1.8.7 is required.
* https://rubydoc.info/gems/sqlite3/1.3.8/frames

Byebug is included. This would be removed on a production build, but it is included if you'd like to use it. Simply place debugger on a line. See documentation here. Ruby version >= 2.4.0 is required.
* https://github.com/deivid-rodriguez/byebug

Some light tests were implemented using Rspec. No ruby version requirement.
* https://rspec.info/documentation/3.10/rspec-core/