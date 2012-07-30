class PollsController < ApplicationController
  def index
  end

  def new
    @poll = Poll.new
  end

  def create
    new_poll = Poll.new(params[:poll])
    new_poll.create_slug
    new_poll.save
    redirect_to :action => "show", :id => new_poll.id
  end

  def show
    @poll = Poll.find(params[:id])
    @pq = @poll.questions.new
    @answer
  end

  def edit
    @poll = Poll.find_by_slug(params[:slug])
    @question = Question.new
  end

  def update

  end
end
