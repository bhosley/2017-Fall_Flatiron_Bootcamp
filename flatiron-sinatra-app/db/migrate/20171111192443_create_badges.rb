class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
      t.string :name
      t.string :description
      t.string :image_link
      t.integer :user_id
      t.integer :authority_id
    end
  end
end
