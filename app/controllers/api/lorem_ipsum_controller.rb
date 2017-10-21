class Api::LoremIpsumController < ActionController::API
	def index
		# render json: { name: 'asdf' }
		@lorems = LoremIpsum.order(:name)
	end

	def show
		@lorem = LoremIpsum.where('lower(name) = ?', params[:id].to_s).first
		@lorem ||= LoremIpsum.first
	end
end
