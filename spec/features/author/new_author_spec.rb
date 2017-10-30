require 'rails_helper'

describe "New author page", type: :feature do
  
  it "should render withour error" do
    visit new_author_path
  end
  it "should have content" do
    visit new_author_path
    
    expect(page).to have_field('First name')
    expect(page).to have_field('Last name')
    expect(page).to have_field('Homepage')
  end
  it "should save author" do
    visit new_author_path

    fill_in "First name", :with => "Alan"
    fill_in "Last name", :with => "Turing"
    fill_in "Homepage", :with => "http://wikipedia.org/Alan_Turing"
    find('input[type="submit"]').click
  end
  it "should ensure last name" do
    visit new_author_path

    fill_in "First name", :with => "Alan"
    fill_in "Homepage", :with => "http://wikipedia.org/Alan_Turing"
    find('input[type="submit"]').click

    expect(page).to have_content("false")
  end
end
