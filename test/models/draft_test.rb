# == Schema Information
#
# Table name: drafts
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  league_id  :bigint           not null
#  season_id  :bigint           not null
#
# Indexes
#
#  index_drafts_on_league_id  (league_id)
#  index_drafts_on_season_id  (season_id)
#

require 'test_helper'

class DraftTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
