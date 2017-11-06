require 'rails_helper'

describe "Edit paper page", type: :feature do

	it "should render without error" do
	  visit new_paper_path

    	fill_in "Title", :with => "Die Schoenheit des Scheiterns"
    	fill_in "Venue", :with => "here"
    	fill_in "Year", :with => 2017
    	find('input[type="submit"]').click

	  visit '/papers/1/edit'
	end

	it "should have author 1 field" do
	visit new_paper_path

        fill_in "Title", :with => "Die Schoenheit des Scheiterns"
        fill_in "Venue", :with => "here"
        fill_in "Year", :with => 2017
        find('input[type="submit"]').click

        visit '/papers/1/edit'
	expect(page).to have_content("Author 1")
	end

	it "should have 5 authors field" do
        visit new_paper_path

        fill_in "Title", :with => "Die Schoenheit des Scheiterns"
        fill_in "Venue", :with => "here"
        fill_in "Year", :with => 2017
        find('input[type="submit"]').click

        visit '/papers/1/edit'
        expect(page).to have_content("Author 5")
	expect(page).not_to have_content("Author 6")
        end
end
