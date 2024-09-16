class WordsController < ApplicationController
  def index
    @q = Word.ransack(params[:q])
    @words = @q.result(distinct: true).includes(:user).order(created_at: :desc).page(params[:page])
    @words = @words.where(user: current_user)
  end

  def new
    # @wordは、作成画面のビュー（app/views/words/new.html.erb）に渡されます。
    @word = Word.new
  end

  def show
    @word = Word.find(params[:id])
  end
    
  def edit
    @word = current_user.words.find(params[:id])
  end
    
  def update
      @word = current_user.words.find(params[:id])
      if @word.update(word_params)
        redirect_to words_path, success: '単語帳を修正しました'
      else 
        flash.now[:danger] = '単語の更新に失敗しました'
        render :edit, status: :unprocessable_entity
      end
  end
    
  def create
    # 引数word_paramsを与えることで、bookに代入し、変数に格納
    @word = current_user.words.build(word_params)
    if @word.save
      redirect_to request.referer, success: '単語帳に新しく書き加えました'
    else
      flash.now[:danger] = '単語の登録に失敗しました'
      render :new, status: :unprocessable_entity
    end
  end
    
  def destroy
    word = current_user.words.find(params[:id])
    word.destroy!
    redirect_to words_path, success: '単語を正しく消しました', status: :see_other
  end

  private

  def word_params
    params.require(:word).permit(:word, :body)
  end
end