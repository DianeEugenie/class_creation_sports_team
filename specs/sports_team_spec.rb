# Make a class to represent a Team that has the properties Team name (String), Players (array of strings) and a Coach (String).
# For each property in the class make a getter method than can return them.
# Create a setter method to allow the coach's name to be updated.
# Refactor the class to use attr_reader or attr_accessor instead of your own getter and setter methods.
# Create a method that adds a new player to the players array.
# Add a method that takes in a string of a player's name and checks to see if they are in the players array.
# Add a points property into your class that starts at 0.
# Create a method that takes in whether the team has won or lost and updates the points property for a win.

require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')

class TestSportsTeam < MiniTest::Test

  def setup()
    @sports_team = SportsTeam.new('Ajax', ['Ruud van Nistelrooij', 'Frank de Boer', 'Raffael van der Vaart'], 'Johan Cruijff')
  end

  def test_get_team_name()
    assert_equal('Ajax', @sports_team.get_team_name())
  end

  def test_get_player_names()
    assert_equal(['Ruud van Nistelrooij', 'Frank de Boer', 'Raffael van der Vaart'], @sports_team.get_player_names())
  end

  def test_get_coach_name()
    assert_equal('Johan Cruijff', @sports_team.get_coach_name())
  end

  def test_set_coach_name()
    #Act
    @sports_team.set_coach_name('Patrick Kluivert')
    #Assert
    assert_equal('Patrick Kluivert', @sports_team.get_coach_name())
  end


end
