# == Schema Information
#
# Table name: challengers
#
#  id            :bigint           not null, primary key
#  first_name    :string           not null
#  last_name     :string           not null
#  original_show :string           not null
#  total_seasons :integer
#  total_wins    :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Challenger < ApplicationRecord
end
