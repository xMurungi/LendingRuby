
class Borrowing < ApplicationRecord
  belongs_to :book
  
  validates :borrower_name, presence: true
  validates :borrowed_at, presence: true
  validate :cannot_borrow_unavailable_book
  
  private
  
  def cannot_borrow_unavailable_book
    if book.present? && !book.available? && book.current_borrowing != self
      errors.add(:book, "is not available")
    end
  end
end
