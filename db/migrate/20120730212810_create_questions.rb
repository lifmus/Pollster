class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :value
      t.string :response

      t.timestamps
    end
  end
end
