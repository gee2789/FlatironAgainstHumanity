class CreateActivegames < ActiveRecord::Migration[5.0]
  def change
    create_table :activegames do |t|
      t.integer :order
      t.belongs_to :game, foreign_key: true
      t.belongs_to :account, foreign_key: true
      t.boolean :isactive, default: true

      t.timestamps
    end
  end
end
