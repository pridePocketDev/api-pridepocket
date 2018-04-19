class CreateWishlistItems < ActiveRecord::Migration[5.1]
  def change
    create_table :wishlist_items do |t|
      t.references :campaign, foreign_key: true
      t.string :item_url

      t.timestamps
    end
  end
end
