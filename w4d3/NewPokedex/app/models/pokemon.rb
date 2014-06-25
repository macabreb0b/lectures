class Pokemon < ActiveRecord::Base
  belongs_to :master
  
  validates :name, :type_one, :height, :gender, :presence => true
  
  TYPES = [
    'electric',
    'fire',
    'water',
    'flying',
    'ghost',
    'cat'
    
  ]
end
