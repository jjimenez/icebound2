class CreateManuscriptTypes < ActiveRecord::Migration
  def change
    create_table :manuscript_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
