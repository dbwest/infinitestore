class CreateThumbnails < ActiveRecord::Migration
  def change
    create_table :thumbnails do |t|
      t.string :thumb_url

      t.timestamps
    end
  end
end
