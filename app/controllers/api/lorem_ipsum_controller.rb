class Api::LoremIpsumController < ActionController::API
	def index
		# render json: { name: 'asdf' }
		@lorems = LoremIpsum.order(:name)
	end

	def show
		@lorem = LoremIpsum.where('lower(name) = ?', params[:id].to_s).first
		@lorem ||= LoremIpsum.first

		@text = @lorem.text_for(params[:l], params[:p])
	end
end
