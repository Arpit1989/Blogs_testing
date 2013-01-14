require 'spec_helper'


describe UsersController do
  render_views
before (:each) do
    @user = FactoryGirl.create(:user)
    sign_in @user
  end
end