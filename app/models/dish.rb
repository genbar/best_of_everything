class Dish < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  validates :cuisine, :presence => true

  belongs_to :cuisine
  has_many :favorites
  has_many :venues, :through => :favorites
end
