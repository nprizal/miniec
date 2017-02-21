class EventPostsController < ApplicationController
	layout 'event_posts'

	# イベント一覧
	def index
		@data = EventPost.all.order('created_at desc')
	end

	# イベント新規
	def add
		@event_post = EventPost.new
		@event_categories = EventCategory.all
		if request.post? then
			@event_post = EventPost.create event_posts_params
			redirect_to '/event_posts'
		end
	end

	# イベント編集
	def edit
		@event_post = EventPost.find params[:id]
		@event_categories = EventCategory.all
		if request.patch? then
			@event_post.update event_posts_params
			redirect_to '/event_posts'
		end
	end

	# イベント削除
	def delete
		@event_post = EventPost.find(params[:id])
		if request.post? then
			@event_post.destroy
			redirect_to '/event_posts'
		end
	end

	private
	def event_posts_params
		params.require(:event_post).permit(:title, :content, :event_category_id)
	end

end
