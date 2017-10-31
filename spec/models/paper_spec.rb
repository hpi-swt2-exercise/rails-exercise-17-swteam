require 'rails_helper'

describe Paper, :type => :model do
  it "Should create paper" do
   # visit new_author_path

    paper = Paper.new(title: "MACHINE LEARNING EXTREME", venue: "mind 49: 433-460", year: 1950)
    expect(paper.title).to eq("MACHINE LEARNING EXTREME")
    expect(paper.venue).to eq("mind 49: 433-460")
    expect(paper.year).to eq(1950)
   # expect(author.name).to eq("Alan Turing")
  end

  it "Should ensure last name" do
    paper = Paper.new(venue: "mind 49: 433-460", year: 1950)
    expect(paper.id).to be_nil
  end
end
