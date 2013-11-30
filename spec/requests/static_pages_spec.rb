require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "should have the content 'Home page'" do
      visit static_pages_home_path
      expect(page).to have_content('Home page')
    end
  end
end
