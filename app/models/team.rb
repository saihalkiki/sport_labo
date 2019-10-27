class Team < ApplicationRecord
    
  belongs_to :prefecture
  belongs_to :user
  belongs_to :sport

end
