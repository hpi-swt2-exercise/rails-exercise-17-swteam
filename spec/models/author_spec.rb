require 'rails_helper'

describe Author, :type => :model do
  it "Should create Alan Turing" do
   # visit new_author_path

    author = Author.new(First_name: "Alan", Last_name: "Turing", Homepage: "http://wikipedia.org/Alan_Turning")
    expect(author.First_name).to eq("Alan")
  end
end
