require ('minitest/autorun')
require ('minitest/rg')
require_relative ('sports_team')

class TestSportsTeam < Minitest::Test

  def setup()  
    @sports_team = SportsTeam.new("Avengers", ["John", "Steve", "Alan", "Ally"], "Graham")
  end

    def test_get_team_name
      assert_equal("Avengers", @sports_team.get_team_name())
    end

    def test_get_player_names
      assert_equal(["John", "Steve", "Alan", "Ally"], @sports_team.get_player_names)
    end

    def test_get_coach_name
      assert_equal("Graham", @sports_team.get_coach_name())
    end

    def test_get_points
      assert_equal(0, @sports_team.get_points())
    end

    def test_set_coach_name
      @sports_team.set_coach_name("Chris")
      assert_equal("Chris", @sports_team.get_coach_name())
    end

    def test_adding_new_player
      @sports_team.adding_new_player("Colin")
      assert_equal(["John", "Steve", "Alan", "Ally", "Colin"], @sports_team.get_player_names())
    end

    def test_check_player_in_team
      assert_equal(false, @sports_team.check_player("Frank"))
    end

    def test_has_team_won
      @sports_team.has_team_won("win")
      assert_equal(1, @sports_team.get_points())
    end

    
end


