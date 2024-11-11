class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:question]
      @question = params[:question]
      if @question == 'i am going to work'
        return  @answer = 'Great!'
      elsif @question[-1, 1] == '?'
        return @answer = 'Silly question, get dressed and go to work!'
      else
        return @answer = 'I don\'t care, get dressed and go to work!'
      end
    end
  end
end
