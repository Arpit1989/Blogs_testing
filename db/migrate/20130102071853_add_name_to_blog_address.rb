class AddNameToBlogAddress < ActiveRecord::Migration
  def change
    add_column :blog_addresses, :name, :string
  end
end
