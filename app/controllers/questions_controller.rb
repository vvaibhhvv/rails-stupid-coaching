class QuestionsController < ApplicationController

  def coach_answer(question)
    if question.downcase == "I am going to work right now!!"
    elsif question.include?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def answer
    @questions = params[:question]
    @answer = coach_answer(@questions)
  end

  def ask

  end
end
