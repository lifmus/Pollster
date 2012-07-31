class Question < ActiveRecord::Base
  attr_accessible :response, :value, :poll_id, :limited_choices

  belongs_to :poll

  has_many :answers

  has_many :choices
end
