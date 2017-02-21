class EventPostsController < ApplicationController
	layout 'event_posts'

	# イベント一覧
	def index

	end

	# イベント新規
	def add

	end

	# イベント編集
	def edit

	end

	# イベント削除
	def delete

	end

	private
	def event_posts_params
		params.require(:event_post).permit(:title, :content, :event_category_id)
	end

end
