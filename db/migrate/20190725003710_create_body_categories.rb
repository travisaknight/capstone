class CreateBodyCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :body_categories do |t|
      t.string :body_part

      t.timestamps
    end
  end
end
