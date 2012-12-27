class CreateBlogAddresses < ActiveRecord::Migration
  def change
    create_table :blog_addresses do |t|
      t.string :blogadd
      t.references :User

      t.timestamps
    end
    add_index :blog_addresses, :User_id
  end
end
