# == Schema Information
#
# Table name: venues
#
#  id          :integer          not null, primary key
#  name        :string
#  location    :string
#  category    :string
#  description :string
#  image       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

class Venue < ApplicationRecord
  belongs_to :user, optional: true
  has_many :happyhours
end
