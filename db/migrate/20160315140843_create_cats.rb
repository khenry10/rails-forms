class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :kind
      t.string :image_url
    end
  end
end
