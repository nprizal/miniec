class CreateEventConfigs < ActiveRecord::Migration[5.0]
  def change
    create_table :event_configs do |t|
      t.text :title
      t.text :subtitle
      t.text :stylename

      t.timestamps
    end
  end
end
