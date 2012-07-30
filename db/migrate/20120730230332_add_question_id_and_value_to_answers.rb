class AddQuestionIdAndValueToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :question_id, :integer
    add_column :answers, :value, :string
  end
end
