class Blog < ApplicationRecord
  validates :title, presence: true,length: { maximum: 100 }
  validates :context, presence: true,length: { maximum: 30000 }
  has_one_attached :avatar
  belongs_to :user
  
  # def thumbnail
  #   return self.avatar.variant(resize:'200x200').processed
  # end
  
end

