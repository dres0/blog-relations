require "rails_helper"

RSpec.describe Post, type: :model do
  it "is not valid without a author" do
    post = Post.create(title: "Test", content: "Test")
    expect(post).to_not be_valid
  end
end
