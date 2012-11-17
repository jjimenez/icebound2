class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets do |t|
      t.string :name
      t.string :email
      t.string :website
      t.integer :market_type_id

      t.timestamps
    end
  end
end
