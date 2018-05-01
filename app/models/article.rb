class Article < ApplicationRecord
    
  has_many :categories

  scope :active, 	   -> { where('active = ?', true) }
  scope :alphabetical, -> { order('title') }
  
  validates_presence_of :title, :content
    
end
