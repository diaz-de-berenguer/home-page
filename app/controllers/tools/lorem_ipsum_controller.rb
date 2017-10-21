class Tools::LoremIpsumController < ApplicationController
	http_basic_authenticate_with name: ENV['auth_name'], password: ENV['auth_password']
	before_action :find_lorem, only: [:show, :edit, :update, :destroy]

	def index
		@lorems = LoremIpsum.all
	end

	def new
		@lorem = LoremIpsum.new
	end

	def create
		@lorem = LoremIpsum.new(lorem_params)
		if @lorem.save
			redirect_to tools_lorem_ipsum_path @lorem
		else
			render 'new'
		end
	end

	def show
	end

	def edit
	end

	def update
		if @lorem.update(lorem_params)
			redirect_to tools_lorem_ipsum_path @lorem
		else
			render 'edit'
		end
	end

	def destroy
		@lorem.destroy
		redirect_to tools_lorem_ipsum_index_path
	end

	private

		def lorem_params
			params.require(:lorem_ipsum).permit(:name, :text)
		end

		def find_lorem
			@lorem = LoremIpsum.find(params[:id])
		end
end
