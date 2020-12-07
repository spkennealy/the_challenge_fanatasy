# == Schema Information
#
# Table name: leagues
#
#  id          :bigint           not null, primary key
#  description :string
#  name        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class League < ApplicationRecord
    validates :name, presence: true

    # has_many :users
        
end
