class EventPostsController < ApplicationController
	layout 'event_posts'


	def index
		@data = EventPost.all.order('created_at desc')
	end


	def add
		@event_post = EventPost.new
		@event_categories = EventCategory.all
		if request.post? then
			@event_post = EventPost.create event_posts_params
			redirect_to '/event_posts'
		end
	end


	def edit
		@event_post = EventPost.find params[:id]
		@event_categories = EventCategory.all
		if request.patch? then
			@event_post.update event_posts_params
			redirect_to '/event_posts'
		end
	end


	def delete
		@event_post = Event.find(params[:id])
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
