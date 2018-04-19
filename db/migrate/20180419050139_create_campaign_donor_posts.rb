class CreateCampaignDonorPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :campaign_donor_posts do |t|
      t.references :campaign, foreign_key: true
      t.references :donor, foreign_key: true
      t.string :post_text

      t.timestamps
    end
  end
end
