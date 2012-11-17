class AddUserIdToManuscriptTypes < ActiveRecord::Migration
  def change
    add_column :manuscript_types, :user_id, :integer

  end
end
