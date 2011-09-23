require 'spec_helper'

describe UsersController do
  render_views # tells rspec to render views, like rails does so we can test views too

  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'new'
      response.should have_selector("title", :content => "Sign Up")
    end
  end

end
