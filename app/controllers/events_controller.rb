class EventsController < ApplicationController
	layout 'events'

	# ECサイト：イベント一覧
	def index
		@data = EventPost.all.order('created_at desc')
	end

	# ECサイト：カテゴリ別
	def category
		@event_category = EventCategory.find params[:id]
		@data = EventPost.where('event_category_id = ?',params[:id])
	end

	# ECサイト:イベント詳細
	def show
		@event_post = EventPost.find params[:id]
	end


end
