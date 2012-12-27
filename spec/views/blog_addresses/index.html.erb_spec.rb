require 'spec_helper'

describe "blog_addresses/index" do
  before(:each) do
    assign(:blog_addresses, [
      stub_model(BlogAddress,
        :blogadd => "Blogadd",
        :User => nil
      ),
      stub_model(BlogAddress,
        :blogadd => "Blogadd",
        :User => nil
      )
    ])
  end

  it "renders a list of blog_addresses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Blogadd".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
