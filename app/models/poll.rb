class Poll < ActiveRecord::Base
  attr_accessible :name, :slug

  has_many :questions

  def create_slug
    slug = (0...7).map{ ('a'..'z').to_a[rand(26)] }.join
    self.slug = slug
    self.save
  end

end
