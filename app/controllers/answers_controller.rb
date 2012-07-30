class AnswersController < ApplicationController
  def new
  end

  def edit
  end

  def update
  end

  def create
    answer = Answer.create(params[:answer])
    redirect_to :action => "show", :id => answer.question.poll_id, :controller => "polls"
  end
end
