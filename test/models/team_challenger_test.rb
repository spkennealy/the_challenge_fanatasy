# == Schema Information
#
# Table name: team_challengers
#
#  id            :bigint           not null, primary key
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  challenger_id :bigint           not null
#  season_id     :bigint           not null
#  team_id       :bigint           not null
#
# Indexes
#
#  index_team_challengers_on_challenger_id  (challenger_id)
#  index_team_challengers_on_team_id        (team_id)
#

require 'test_helper'

class TeamChallengerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
