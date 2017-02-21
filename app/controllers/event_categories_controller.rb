class EventCategoriesController < ApplicationController
	layout 'event_categories'

	# カテゴリ一覧
	def index
		@data = EventCategory.all
	end
	
	# カテゴリ追加
	def add
		@event_category = EventCategory.new
		if request.post? then
			@event_category = EventCategory.create event_category_params
			redirect_to '/event_categories'
		end
	end

	# カテゴリ編集	
	def edit
		@event_category = EventCategory.find params[:id]
		if request.patch? then
			@event_category.update event_category_params
			redirect_to '/event_categories'
		end
	end

	private
	def event_category_params
		params.require(:event_category).permit(:name, :memo)
	end

end
