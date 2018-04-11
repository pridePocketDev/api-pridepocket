class CreateCampaignHosts < ActiveRecord::Migration[5.1]
  def change
    create_table :campaign_hosts do |t|
      t.string :name

      t.timestamps
    end
  end
end
