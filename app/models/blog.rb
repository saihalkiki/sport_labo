class Blog < ApplicationRecord
  validates :title, presence: true,length: { maximum: 100 }
  validates :context, presence: true,length: { maximum: 30000 }
  
  belongs_to :user
end

