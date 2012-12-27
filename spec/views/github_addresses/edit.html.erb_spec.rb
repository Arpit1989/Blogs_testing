require 'spec_helper'

describe "github_addresses/edit" do
  before(:each) do
    @github_address = assign(:github_address, stub_model(GithubAddress,
      :githubadd => "MyString",
      :User => nil
    ))
  end

  it "renders the edit github_address form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => github_addresses_path(@github_address), :method => "post" do
      assert_select "input#github_address_githubadd", :name => "github_address[githubadd]"
      assert_select "input#github_address_User", :name => "github_address[User]"
    end
  end
end
