class AddLocationToEventPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :event_posts, :location, :string
  end
end
