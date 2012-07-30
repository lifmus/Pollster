class QuestionsController < ApplicationController
  def index
  end

  def edit
  end

  def new
  end

  def show
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    question = Question.find_by_id(params[:id])
    question.response = params[:question][:response] unless params[:question][:response] == nil
    question.value = params[:question][:value] unless params[:question][:value] == nil
    question.save
    redirect_to :action => "show", :id => question.poll_id, :controller => "polls"
    # redirect_to edit_poll_path(question.poll.slug)
  end

  def create
    new_question = Question.create(params[:question])
    # redirect_to :action => "show", :id => new_question.poll_id, :controller => "polls"
    redirect_to :back
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to :back
  end
end
