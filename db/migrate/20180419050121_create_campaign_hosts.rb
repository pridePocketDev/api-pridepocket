class CreateCampaignHosts < ActiveRecord::Migration[5.1]
  def change
    create_table :campaign_hosts do |t|
      t.references :user, foreign_key: true
      t.string :self_description
      t.string :profile_image_url
      t.references :wepay_account, foreign_key: true

      t.timestamps
    end
  end
end
