class CreateWepayAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :wepay_accounts do |t|
      t.string :token
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
