class EventsController < ApplicationController
	layout 'events'

	# ECサイト：イベント一覧
	def index
		page_size = 5
		@page_num = 0
		if params[:page] != nil then
			@page_num = params[:page].to_i
		end
		@data = EventPost.all.order('created_at desc')
			.offset(page_size * @page_num)
			.limit(page_size)
	end

	# ECサイト：カテゴリ別
	def category
		page_size = 5
		@page_num = 0
		if params[:page] != nil then
			@page_num = params[:page].to_i
		end
		@event_category = EventCategory.find params[:id]
		
		@data = EventPost.where('event_category_id = ?',params[:id])
			.order('created_at desc').offset(page_size * @page_num)
			.limit(page_size)
	end

	# ECサイト:イベント詳細
	def show
		@event_post = EventPost.find params[:id]
	end


end
