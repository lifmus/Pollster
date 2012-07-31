class AddBooleanLimitedChoicesToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :limited_choices, :boolean
  end
end
