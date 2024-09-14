class WordsController < ApplicationController
  def index
    @words = Word.includes(:user).where(user: current_user)
  end
end