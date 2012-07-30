class Answer < ActiveRecord::Base
  attr_accessible :value, :question_id

  belongs_to :question
end
