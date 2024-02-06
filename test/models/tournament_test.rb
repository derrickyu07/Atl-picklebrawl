require 'test_helper'

class TournamentTest < ActiveSupport::TestCase
  test "should not save tournament without title" do
    tournament = Tournament.new
    assert_not tournament.save, "Saved the tournament without a title"
  end
end
