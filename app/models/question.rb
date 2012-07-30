class Question < ActiveRecord::Base
  attr_accessible :response, :value, :poll_id

  belongs_to :poll

  has_many :answers
end
