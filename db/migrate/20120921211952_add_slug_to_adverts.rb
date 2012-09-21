class AddSlugToAdverts < ActiveRecord::Migration
  def change
    add_column :adverts, :slug, :string
    add_index :adverts, :slug, unique: true
  end
end
