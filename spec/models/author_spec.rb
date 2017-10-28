require 'rails_helper'

describe Author, :type => :model do
  it "Should create Alan Turing" do
   # visit new_author_path

    author = Author.new(First_name: "Alan", Last_name: "Turing", Homepage: "ttp://wikipedia.org/Alan_Turning")
    expect(author.First_name).to eq("Alan")
    expect(author.Last_name).to eq("Turing")
    expect(author.Homepage).to eq("http://wikipedia.org/Alan_Turning")
  end
end
