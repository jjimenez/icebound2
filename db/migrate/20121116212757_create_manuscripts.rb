class CreateManuscripts < ActiveRecord::Migration
  def change
    create_table :manuscripts do |t|
      t.string :title
      t.integer :manuscript_type_id
      t.string :word_count

      t.timestamps
    end
  end
end
