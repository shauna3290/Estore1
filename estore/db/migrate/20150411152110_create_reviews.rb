class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :user_id
      t.integer :product_id
      t.date :datesent
      t.integer :value

      t.timestamps
    end
  end
end
