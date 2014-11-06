class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.text :description

      t.references :user

      t.datetime :published_at
      t.timestamps null: false
    end
  end
end
