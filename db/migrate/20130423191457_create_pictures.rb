class CreatePictures < ActiveRecord::Migration
  def up
    create_picture :pictures do |t|
      t.integer :from_id
      t.integer :to_id
      t.string :source
      t.text :comment
      t.string :category
      t.string :area
  end

  def down
  end
end
