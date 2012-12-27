class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :projecturl
      t.references :github_address

      t.timestamps
    end
    add_index :projects, :github_address_id
  end
end
