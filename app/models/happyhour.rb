# == Schema Information
#
# Table name: happyhours
#
#  id         :integer          not null, primary key
#  start      :time
#  end        :time
#  venue_id   :integer
#  deal_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  day        :string
#

class Happyhour < ApplicationRecord
  belongs_to :venue, optional: true
  has_and_belongs_to_many :deals
end
