class Prefecture < ApplicationRecord
  
  has_many :microposts
  has_many :teams
  
end
