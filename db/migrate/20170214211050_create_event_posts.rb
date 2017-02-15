class CreateEventPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :event_posts do |t|
      t.text :title
      t.text :content
      t.integer :event_category_id

      t.timestamps
    end
  end
end
