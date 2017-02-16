class EventPost < ApplicationRecord
	belongs_to :event_categories
	
	validates :title, :content, presence: {message:'は、必須項目です。'}
end

