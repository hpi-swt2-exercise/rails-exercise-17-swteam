require 'rails_helper'

describe "New paper page", type: :feature do
	it "should render" do
	  visit '/papers/new'
	end
end
