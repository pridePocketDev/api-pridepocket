class CreatePrivacyLevels < ActiveRecord::Migration[5.1]
  def change
    create_table :privacy_levels do |t|
      t.string :name

      t.timestamps
    end
    add_index :privacy_levels, :name, unique: true
  end
end
