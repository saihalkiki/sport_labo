class Micropost < ApplicationRecord
  
  belongs_to :prefecture
  belongs_to :user
  belongs_to :sport
  has_many :participations

  validates :user_id, presence: true
  
  # 現在のユーザーが参加しているか判断
  def participated?(this_user)
      Participation.exists?(user_id: this_user.id)
      # 同上 participations.exists?(user_id: this_user.id)

  end
  
  # scope
  scope :sorted, -> { order(created_at: :desc)}
  scope :sorted2, -> { order( created_at: :asc )}
end
