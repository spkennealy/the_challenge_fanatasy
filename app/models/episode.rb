# == Schema Information
#
# Table name: episodes
#
#  id           :bigint           not null, primary key
#  air_date     :datetime         not null
#  epsidoe_name :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  season_id    :bigint           not null
#

class Episode < ApplicationRecord
end
