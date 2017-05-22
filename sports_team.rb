class SportsTeam

  def initialize(team_name, players, coach)

    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  def get_team_name()
    @team_name
  end

  def get_player_names()
    @players
  end

  def get_coach_name()
    @coach
  end

  def get_points()
    @points
  end

  def set_coach_name(name)
    @coach = name
  end

  def adding_new_player(name)
    @players << name
  end

  def check_player(name)
    for player in @players
      if player == name
        return true
      else
        return false
      end
    end
  end

  def has_team_won(result)
    if result == "win"
      @points += 1
    end
  end

end





