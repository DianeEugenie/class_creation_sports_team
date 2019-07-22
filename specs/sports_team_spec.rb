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
    @sports_team = SportsTeam.new('Ajax', ['Ruud van Nistelrooij', 'Frank de Boer', 'Raffael van der Vaart'], 'Johan Cruijff', 0)
  end

  # def test_get_team_name()
  #   assert_equal('Ajax', @sports_team.get_team_name())
  # end
  #
  # def test_get_player_names()
  #   assert_equal(['Ruud van Nistelrooij', 'Frank de Boer', 'Raffael van der Vaart'], @sports_team.get_player_names())
  # end
  #
  # def test_get_coach_name()
  #   assert_equal('Johan Cruijff', @sports_team.get_coach_name())
  # end
  #
  # def test_set_coach_name()
  #   #Act
  #   @sports_team.set_coach_name('Patrick Kluivert')
  #   #Assert
  #   assert_equal('Patrick Kluivert', @sports_team.get_coach_name())
  # end

  def test_get_team_name()
    assert_equal('Ajax', @sports_team.team_name)
  end

  def test_get_player_names()
    assert_equal(['Ruud van Nistelrooij', 'Frank de Boer', 'Raffael van der Vaart'], @sports_team.players)
  end

  def test_get_coach_name()
    assert_equal('Johan Cruijff', @sports_team.coach)
  end

  def test_set_coach_name()
    @sports_team.coach = 'Patrick Kluivert'
    assert_equal('Patrick Kluivert', @sports_team.coach)
  end

  def test_add_new_player()
    #Act
    @sports_team.add_new_player('Frenkie de Jong')
    #Assert
    assert_equal(4, @sports_team.players.count())
  end

  # Add a method that takes in a string of a player's name and checks to see if they are in the players array.

  def test_existing_player__true()
    #Assert
    assert_equal(true, @sports_team.existing_player('Frank de Boer'))
  end

  def test_existing_player__false()
    assert_equal(false, @sports_team.existing_player('Bas Jonker'))
  end

  # Add a points property into your class that starts at 0.
  def test_get_points_total()
    assert_equal(0, @sports_team.points)
  end


  # Create a method that takes in whether the team has won or lost and updates the points property for a win.

  def test_update_points__win()
    #Act
    @sports_team.update_points('win')
    #Assert
    assert_equal(3, @sports_team.points)
  end

  def test_update_points__loss()
    #Act
    @sports_team.update_points('loss')

    #Assert
    assert_equal(-3, @sports_team.points)
  end

  def test_update_points__equal()
    #Act
    @sports_team.update_points('equal')

    #Assert
    assert_equal(1, @sports_team.points)
  end



end
