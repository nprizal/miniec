class EventsController < ApplicationController
	layout 'events'


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


	def show
		@event_post = EventPost.find params[:id]
	end


end
