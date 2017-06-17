# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  dob             :date
#  email           :string
#  password_digest :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  has_many :venues
  has_secure_password
end
