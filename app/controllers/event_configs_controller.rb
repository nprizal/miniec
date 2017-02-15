class EventConfigsController < ApplicationController
	layout 'event_configs'


	def index
		@event_config = EventConfig.find 1
	end


	def edit
		@event_config = EventConfig.find 1
		if request.patch? then
			@event_config.update event_config_params
			redirect_to '/event_configs'
		end
	end


	private
	def config_params
		params.require(:event_config).permit(:title, :subtitle, :stylename)
	end


end
