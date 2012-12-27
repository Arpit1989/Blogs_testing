class CreateProjts < ActiveRecord::Migration
  def change
    create_table :projts do |t|
      t.string :title
      t.references :github_address

      t.timestamps
    end
    add_index :projts, :github_address_id
  end
end
