class CreateMicroposts < ActiveRecord::Migration[5.2]
  def change
    create_table :microposts do |t|
      t.text :content
      t.integer :user_id
      t.integer :prefecture_id
      t.integer :sport_id
      t.integer :team_id

      t.timestamps
    end
  end
end
