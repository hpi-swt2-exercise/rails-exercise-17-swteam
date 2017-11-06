require 'rails_helper'

describe "Author index page", type: :feature do

  it "Should render index page" do
	visit '/papers'
  end
  it "Should have title column" do
	visit '/papers'

 	expect(page).to have_content("Title", :count => 1)	
  end
  it "Should have link to new paper page" do
	visit '/papers'

	expect(page).to have_css("a", :text => "Add paper")
  end
  it "Should link to paper page" do
	visit '/papers'
	
	expect(page).to have_content("Show")
  end

  it "should use scope" do
	visit new_paper_path

    	fill_in "Title", :with => "Die Schoenheit des Scheiterns"
    	fill_in "Venue", :with => "here"
    	fill_in "Year", :with => 2017
    	find('input[type="submit"]').click

	visit new_paper_path

        fill_in "Title", :with => "Die Schoenheit des Scheiterns: jetzt erst recht"
        fill_in "Venue", :with => "here"
        fill_in "Year", :with => 1950
        find('input[type="submit"]').click

	visit '/papers/?year=1950'

	expect(page).not_to have_content(2017)
  end
end

