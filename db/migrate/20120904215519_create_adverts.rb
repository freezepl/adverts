class CreateAdverts < ActiveRecord::Migration
  def change
    create_table :adverts do |t|
      t.string :title
      t.integer :category_id
      t.integer :user_id
      t.text :description
      t.integer :price
      t.date :expire
      t.integer :phone

      t.timestamps
    end
  end
end
