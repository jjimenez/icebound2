class CreateMarketTypes < ActiveRecord::Migration
  def change
    create_table :market_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
