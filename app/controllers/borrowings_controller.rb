
class BorrowingsController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    @borrowing = @book.borrowings.build(borrowing_params)
    @borrowing.borrowed_at = Time.current
    
    if @borrowing.save
      @book.update(status: "borrowed")
      redirect_to @book, notice: 'Book was successfully borrowed.'
    else
      redirect_to @book, alert: 'Could not borrow book.'
    end
  end
  
  def return
    @book = Book.find(params[:book_id])
    @borrowing = @book.current_borrowing
    
    if @borrowing&.update(returned_at: Time.current)
      @book.update(status: nil)
      redirect_to @book, notice: 'Book was successfully returned.'
    else
      redirect_to @book, alert: 'Could not return book.'
    end
  end
  
  private
  
  def borrowing_params
    params.require(:borrowing).permit(:borrower_name)
  end
end
