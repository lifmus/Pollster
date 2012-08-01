class Poll < ActiveRecord::Base
  attr_accessible :name, :slug

  has_many :questions

  before_create :create_slug

  def create_slug
    self.slug = (0...7).map{ ('a'..'z').to_a[rand(26)] }.join
  end

end
