class AddUserIdToMarketTypes < ActiveRecord::Migration
  def change
    add_column :market_types, :user_id, :integer

  end
end
