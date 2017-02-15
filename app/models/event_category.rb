class EventCategory < ApplicationRecord
	has_many :event_post
	validates :name, presence: {message:'は、必須項目です。'}
end