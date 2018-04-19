class CreateCampaigns < ActiveRecord::Migration[5.1]
  def change
    create_table :campaigns do |t|
      t.references :campaign_host, foreign_key: true
      t.integer :goal_amount_cents
      t.string :welcome_message
      t.string :thank_you_note
      t.datetime :published
      t.datetime :start_at
      t.datetime :end_at
      t.string :description
      t.references :privacy_level, foreign_key: true

      t.timestamps
    end
  end
end
