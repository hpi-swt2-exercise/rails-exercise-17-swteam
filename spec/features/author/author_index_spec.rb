require 'rails_helper'

describe "Author index page", type: :feature do

  it "Should render index page" do
	visit '/authors'
  end
  it "Should have name column" do
	visit '/authors'

 	expect(page).to have_content("Name", :count => 1)	
  end
  it "Should have link to new author page" do
	visit '/authors'

	expect(page).to have_css("a", :text => "Add author")
  end
  it "Should link to author page" do
	visit '/authors'
	
	expect(page).to have_css("a", :text => "Show")
  end
end
