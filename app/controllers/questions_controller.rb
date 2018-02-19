class QuestionsController < ApplicationController

  answers = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]
    # question: ["I am going to work", "/\w+?/", "I don't care, get dressed and go to work!"],

  def ask
  end

  def answer
    # raise
    # @questions = answers
    @question = params[:question]
    if @question == "I am going to work"
      @answer = "Great!"
    elsif @question[-1] == "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
    # @firstname = params[:firstname]
  end
end
