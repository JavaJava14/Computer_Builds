class CreateBuilds < ActiveRecord::Migration[6.0]
  def change
    create_table :builds do |t|
      t.string :title
      t.string :image
      t.text :specs
      t.integer :user_id
  end
end
