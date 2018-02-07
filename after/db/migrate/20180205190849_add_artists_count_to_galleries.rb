class AddArtistsCountToGalleries < ActiveRecord::Migration[5.2]
  def change
    add_column :galleries, :artists_count, :integer, default: 0
  end
end
