require 'spec_helper'

describe AdminController do

  describe "GET 'fillup'" do
    it "should be successful" do
      get 'fillup'
      response.should be_success
    end
  end

end
