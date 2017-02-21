class EventCategoriesController < ApplicationController
	layout 'event_categories'

	# カテゴリ一覧
	def index

	end
	
	# カテゴリ追加
	def add

	end

	# カテゴリ編集	
	def edit

	end

	private
	def event_category_params
		params.require(:event_category).permit(:name, :memo)
	end

end
