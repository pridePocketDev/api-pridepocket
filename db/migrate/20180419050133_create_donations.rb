class CreateDonations < ActiveRecord::Migration[5.1]
  def change
    create_table :donations do |t|
      t.references :campaign, foreign_key: true
      t.references :donor, foreign_key: true
      t.integer :amount_cents
      t.string :wepay_transaction_token

      t.timestamps
    end
  end
end
