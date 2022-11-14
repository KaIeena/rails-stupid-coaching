class QuestionsController < ApplicationController

  def ask
  end

  def answer
    if params[:answer]
      if params[:answer].end_with?("?")
        @answer = "Silly question, get dressed and go to work!"
        return @answer
      elsif params[:answer].end_with?("!")
        @answer = "I don't care, get dressed and go to work!"
        return @answer
      elsif params[:answer] == "I am going to work"
        @answer = "Great!"
        return @answer
      end
    end
  end
end
