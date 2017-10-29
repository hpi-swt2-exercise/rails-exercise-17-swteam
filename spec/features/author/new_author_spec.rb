require 'rails_helper'

describe "New author page", type: :feature do
  
  it "should render withour error" do
    visit new_author_path
  end
  it "should have content" do
    visit new_author_path
    
    expect(page).to have_field('Author first name')
    expect(page).to have_field('Author last name')
    expect(page).to have_field('Author homepage')
  end
  it "should save author" do
    visit new_author_path

    fill_in "Author first name", :with => "Alan"
    fill_in "Author last name", :with => "Turing"
    fill_in "Author homepage", :with => "http://wikipedia.org/Alan_Turing"
    find('input[type="submit"]').click
  end
end
