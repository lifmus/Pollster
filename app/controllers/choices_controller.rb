class ChoicesController < ApplicationController
  def create
  end

  def show

  end

  def update
    current_choice = Choice.find(params[:id])
    current_choice.value = params[:choice][:value]
    current_choice.save
    redirect_to :back
  end
end
