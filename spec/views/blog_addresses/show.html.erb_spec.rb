require 'spec_helper'

describe "blog_addresses/show" do
  before(:each) do
    @blog_address = assign(:blog_address, stub_model(BlogAddress,
      :blogadd => "Blogadd",
      :User => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Blogadd/)
    rendered.should match(//)
  end
end
