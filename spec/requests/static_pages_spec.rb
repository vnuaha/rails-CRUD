require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "should have the content 'Home page'" do
      get static_pages_home_path
      response.status.should be(200)
      expect(page).to have_content('Home page')
    end
  end
end
