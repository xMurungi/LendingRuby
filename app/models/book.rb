
class Book < ApplicationRecord
  has_many :borrowings, dependent: :destroy
  
  validates :title, presence: true
  validates :author, presence: true
  validates :isbn, presence: true, uniqueness: true
  
  def available?
    status != "borrowed"
  end
  
  def current_borrowing
    borrowings.where(returned_at: nil).first
  end
end
