# == Schema Information
#
# Table name: team_ownerships
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  owner_id   :bigint           not null
#  team_id    :bigint           not null
#
# Indexes
#
#  index_team_ownerships_on_owner_id_and_team_id  (owner_id,team_id) UNIQUE
#  index_team_ownerships_on_team_id               (team_id)
#

require 'test_helper'

class TeamOwnershipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
