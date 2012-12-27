require 'spec_helper'

describe "github_addresses/index" do
  before(:each) do
    assign(:github_addresses, [
      stub_model(GithubAddress,
        :githubadd => "Githubadd",
        :User => nil
      ),
      stub_model(GithubAddress,
        :githubadd => "Githubadd",
        :User => nil
      )
    ])
  end

  it "renders a list of github_addresses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Githubadd".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
