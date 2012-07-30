class DeleteAnswersColumnFromQuestion < ActiveRecord::Migration
  def up
    remove_column :questions, :response
  end

  def down
  end
end
