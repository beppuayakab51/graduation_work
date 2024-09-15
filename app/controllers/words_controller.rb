class WordsController < ApplicationController
  def index
    @words = Word.includes(:user).where(user: current_user)
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
      redirect_to word_path(@book), success: t('defaults.flash_message.updated', item: Word.model_name.human)
    else
      flash.now[:danger] = t('defaults.flash_message.not_updated', item: word.model_name.human)
      render :edit, status: :unprocessable_entity
    end
  end
    
  def create
    # 引数word_paramsを与えることで、bookに代入し、変数に格納
    @word = current_user.words.build(word_params)
    if @word.save
      redirect_to words_path, success: t('defaults.flash_message.created', item: Word.model_name.human)
    else
      flash.now[:danger] = t('defaults.flash_message.not_created', item: @word.model_name.human)
      render :new, status: :unprocessable_entity
    end
  end
    
  def destroy
    word = current_user.words.find(params[:id])
    word.destroy!
    redirect_to word_path, success: t('defaults.flash_message.deleted', item: Word.model_name.human), status: :see_other
  end

  private

  def word_params
    params.require(:word).permit(:word, :body)
  end
end