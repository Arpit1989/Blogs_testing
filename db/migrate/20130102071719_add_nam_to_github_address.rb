class AddNamToGithubAddress < ActiveRecord::Migration
  def change
    add_column :github_addresses, :name, :string
  end
end
