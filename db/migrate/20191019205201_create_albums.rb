class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :image
      t.string :spotify_url
      t.integer :total_tracks
      t.string :spotify_id
      t.references :artist, foreign_key: true

      t.timestamps
    end

    add_index :albums, [:name, :total_tracks], unique: true
  end
end
