# == Schema Information
#
# Table name: artists
#
#  id         :integer          not null, primary key
#  name       :string
#  gallery_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Artist < ApplicationRecord
  belongs_to :gallery, counter_cache: true
end
