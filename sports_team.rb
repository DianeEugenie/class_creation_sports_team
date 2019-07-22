class SportsTeam

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
  end


  def get_team_name()
    return @team_name
  end

  def get_player_names()
    return @players
  end

  def get_coach_name()
    return @coach
  end

end
