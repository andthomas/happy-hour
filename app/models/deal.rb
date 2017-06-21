# == Schema Information
#
# Table name: deals
#
#  id           :integer          not null, primary key
#  drink        :string
#  price        :float
#  description  :string
#  happyhour_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Deal < ApplicationRecord
  has_and_belongs_to_many :happyhours
end
