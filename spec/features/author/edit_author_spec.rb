require 'rails_helper'

describe "Edit author page", type: :feature do

	it "should render without error" do
	  visit '/authors/1/edit'
	end
end
