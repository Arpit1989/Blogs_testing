require 'spec_helper'

describe "github_addresses/show" do
  before(:each) do
    @github_address = assign(:github_address, stub_model(GithubAddress,
      :githubadd => "Githubadd",
      :User => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Githubadd/)
    rendered.should match(//)
  end
end
