class CreateHerokus < ActiveRecord::Migration
  def change
    create_table :herokus do |t|
      t.string :herokuurl
      t.references :project

      t.timestamps
    end
    add_index :herokus, :project_id
  end
end
