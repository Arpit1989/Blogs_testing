class CreateGithubAddresses < ActiveRecord::Migration
  def change
    create_table :github_addresses do |t|
      t.string :githubadd
      t.references :User

      t.timestamps
    end
    add_index :github_addresses, :User_id
  end
end
