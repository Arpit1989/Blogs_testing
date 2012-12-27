require 'spec_helper'

describe "blog_addresses/edit" do
  before(:each) do
    @blog_address = assign(:blog_address, stub_model(BlogAddress,
      :blogadd => "MyString",
      :User => nil
    ))
  end

  it "renders the edit blog_address form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => blog_addresses_path(@blog_address), :method => "post" do
      assert_select "input#blog_address_blogadd", :name => "blog_address[blogadd]"
      assert_select "input#blog_address_User", :name => "blog_address[User]"
    end
  end
end
