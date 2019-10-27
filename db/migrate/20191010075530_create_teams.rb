class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.text :context
      t.integer :user_id
      t.integer :sport_id
      t.integer :prefecture_id

      t.timestamps
    end
  end
end
