
require 'rails_helper'

RSpec.describe Book, type: :model do
  it "is valid with valid attributes" do
    book = Book.new(
      title: "The Great Gatsby",
      author: "F. Scott Fitzgerald",
      isbn: "978-0743273565"
    )
    expect(book).to be_valid
  end

  it "is not valid without a title" do
    book = Book.new(author: "F. Scott Fitzgerald", isbn: "978-0743273565")
    expect(book).not_to be_valid
  end
end
