require 'rails_helper'

describe Author, :type => :model do
  it "Should create Alan Turing" do
   # visit new_author_path

    author = Author.new(first_name: "Alan", last_name: "Turing", homepage: "http://wikipedia.org/Alan_Turning")
    expect(author.first_name).to eq("Alan")
    expect(author.last_name).to eq("Turing")
    expect(author.homepage).to eq("http://wikipedia.org/Alan_Turning")
    expect(author.name).to eq("Alan Turing")
  end

  it "Should ensure last name" do
    author = Author.new(first_name: "Alan", homepage: "http://wikipedia.org/Alan_Turning")
    expect(author.id).to be_nil
  end
end
