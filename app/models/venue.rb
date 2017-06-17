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
#

class Venue < ApplicationRecord
  belongs_to :user, optional: true
end
