class SportsTeam

  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
  end


  # def get_team_name()
  #   return @team_name
  # end
  #
  # def get_player_names()
  #   return @players
  # end
  #
  # def get_coach_name()
  #   return @coach
  # end
  #
  # def set_coach_name(new_coach)
  #   @coach = new_coach
  # end

  attr_reader :team_name, :players
  attr_accessor :coach, :points

  def add_new_player(new_player)
    @players.push(new_player)
  end

  def existing_player(player)
    for player in @players
      return player == player
    end
  end


end
