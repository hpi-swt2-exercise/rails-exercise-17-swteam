require 'rails_helper'

describe "Author index page", type: :feature do

  it "Should render index page" do
	visit '/authors'
  end
end 
