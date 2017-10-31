require 'rails_helper'

describe "Edit author page", type: :feature do

	it "should render without error" do
	  visit new_author_path

    	fill_in "First name", :with => "Alan"
    	fill_in "Last name", :with => "Turing"
    	fill_in "Homepage", :with => "http://wikipedia.org/Alan_Turing"
    	find('input[type="submit"]').click

	  visit '/authors/1/edit'
	end
end
