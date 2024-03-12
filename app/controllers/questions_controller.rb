# frozen_string_literal: true

# The QuestionsController handles requests related to questions.
# It provides actions for creating, viewing, updating, and deleting questions.
class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = ''
    @question = params[:question] if params[:question]
    @answer = if @question == 'I am going to work'
                'Great!'
              elsif @question.include?('?')
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
