require 'rails_helper'

describe Author, :type => :model do
  it "Should create Alan Turing" do
   # visit new_author_path

    author = Author.new(author_first_name: "Alan", author_last_name: "Turing", author_homepage: "http://wikipedia.org/Alan_Turning")
    expect(author.author_first_name).to eq("Alan")
    expect(author.author_last_name).to eq("Turing")
    expect(author.author_homepage).to eq("http://wikipedia.org/Alan_Turning")
    expect(author.name).to eq("Alan Turing")
  end
end
