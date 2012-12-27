require 'spec_helper'

describe "github_addresses/new" do
  before(:each) do
    assign(:github_address, stub_model(GithubAddress,
      :githubadd => "MyString",
      :User => nil
    ).as_new_record)
  end

  it "renders new github_address form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => github_addresses_path, :method => "post" do
      assert_select "input#github_address_githubadd", :name => "github_address[githubadd]"
      assert_select "input#github_address_User", :name => "github_address[User]"
    end
  end
end
