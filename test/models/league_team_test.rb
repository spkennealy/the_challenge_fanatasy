# == Schema Information
#
# Table name: league_teams
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  league_id  :bigint           not null
#  team_id    :bigint           not null
#
# Indexes
#
#  index_league_teams_on_league_id  (league_id)
#  index_league_teams_on_team_id    (team_id)
#

require 'test_helper'

class LeagueTeamTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
