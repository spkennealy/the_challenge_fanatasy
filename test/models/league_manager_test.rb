# == Schema Information
#
# Table name: league_managers
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  league_id  :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_league_managers_on_league_id  (league_id)
#  index_league_managers_on_user_id    (user_id)
#

require 'test_helper'

class LeagueManagerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
