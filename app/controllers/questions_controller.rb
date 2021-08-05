class QuestionsController < ApplicationController

  ANSWERS = {
    1 => { ask: "I am going to work", answer: "Great!"},
    2 => { ask: "?", answer: "Silly question, get dressed and go to work!"},
    3 => { ask: "", answer: "I don't care, get dressed and go to work!"}
  }

  def ask
  end
  def answer

    @answers = { 1 => []}

    if params[:member]
      @members = @members.select { |member| member.start_with?(params[:member]) }
    end
  end
end
