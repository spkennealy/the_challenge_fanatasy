# == Schema Information
#
# Table name: seasons
#
#  id            :bigint           not null, primary key
#  season_number :integer
#  title         :string
#  year          :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class SeasonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
