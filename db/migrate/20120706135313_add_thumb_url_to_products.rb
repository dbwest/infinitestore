class AddThumbUrlToProducts < ActiveRecord::Migration
  def change
    add_column :products, :thumb_url, :string
  end
end
