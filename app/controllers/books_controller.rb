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
    # current_user.books.find(params[:id])と記述することで、
    # ログインしているユーザーが投稿した掲示板一覧の中から
    # params[:id]の値と同じIDを持ったBoardレコードのみを取得する。
  end
    
  def update
    @book = current_user.books.find(params[:id])
    if @book.update(book_params)
      redirect_to books_path(@book),  success: '本に書き加えました'
    else
      flash.now[:danger] = '更新に失敗しました'
      render :edit, status: :unprocessable_entity
    end
  end
    
  def create
    # 引数book_paramsを与えることで、bookに代入し、変数に格納
    @book = current_user.books.build(book_params)
    if @book.save
      redirect_to books_path,  success: '本を新しく入れました'
    else
      flash.now[:danger] = '本の追加に失敗しました'
      render :new, status: :unprocessable_entity
    end
  end
    
  def destroy
    book = current_user.books.find(params[:id])
    book.destroy!
    redirect_to books_path, success: '本は無事に旅立ちました', status: :see_other
  end

  private

  def book_params
    params.require(:book).permit(:title, :original_text, :translated_text,:state)
  end
end