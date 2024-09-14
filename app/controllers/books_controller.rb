class BooksController < ApplicationController
  def index
    @books = Book.includes(:user).where(user: current_user)
  end
    
  def new
    # @bookは、作成画面のビュー（app/views/books/new.html.erb）に渡されます。
    @book = Book.new
  end
    
  def show
    @book = Book.find(params[:id])
  end
    
  def edit
    @book = current_user.books.find(params[:id])
  end
    
  def update
    @book = current_user.books.find(params[:id])
    if @book.update(book_params)
      redirect_to books_path(@book), success: t('defaults.flash_message.updated', item: Book.model_name.human)
    else
      flash.now[:danger] = t('defaults.flash_message.not_updated', item: book.model_name.human)
      render :edit, status: :unprocessable_entity
    end
  end
    
  def create
    # 引数book_paramsを与えることで、bookに代入し、変数に格納
    @book = current_user.books.build(book_params)
    if @book.save
      redirect_to books_path, success: t('defaults.flash_message.created', item: Book.model_name.human)
    else
      flash.now[:danger] = t('defaults.flash_message.not_created', item: @book.model_name.human)
      render :new, status: :unprocessable_entity
    end
  end
    
  def destroy
    book = current_user.books.find(params[:id])
    book.destroy!
    redirect_to book_path, success: t('defaults.flash_message.deleted', item: Board.model_name.human), status: :see_other
  end

  private

  def book_params
    params.require(:book).permit(:title, :original_text, :translated_text)
  end
end
