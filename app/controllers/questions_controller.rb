class QuestionsController < ApplicationController  
  def ask
  end

  def answer
    @question = params[:question]
    time = Time.now
    if @question.blank?
      @answer = 'Please enter a question'
    elsif @question == 'hello'
      @answer = 'Hi there'
    elsif @question == 'What time is it?'
      @answer = time.strftime("%I:%M %p")
    else
      @answer = 'Please ask something else'
    end
  end
end
