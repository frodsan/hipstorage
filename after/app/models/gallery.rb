# == Schema Information
#
# Table name: galleries
#
#  id            :integer          not null, primary key
#  name          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  artists_count :integer          default(0)
#

class Gallery < ApplicationRecord
  has_many :artists, dependent: :destroy
end
