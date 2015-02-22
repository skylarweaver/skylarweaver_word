class Article < ActiveRecord::Base

  belongs_to :category

  validates_presence_of :title
  validates_presence_of :content


  scope :active, where('active = ?', true)
  scope :alphabetical, order('title')
end
