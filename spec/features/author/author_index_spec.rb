require 'rails_helper'

describe "Author index page", type: :feature do

  it "Should render index page" do
	visit '/authors'
  end
  it "Should have name column" do
	visit 'authors'

 	expect(page).to have_css("name", :count => 1)	
  end
end
