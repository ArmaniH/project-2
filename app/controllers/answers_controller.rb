class AnswersController < ApplicationController
  def create
      @question = Question.find(params[:question_id])
      @answer = @question.answer.create(answer_params)
      redirect_to question_path(@question)
    end

    private
      def answer_params
        params.require(:answer).permit(:string)
      end
  end