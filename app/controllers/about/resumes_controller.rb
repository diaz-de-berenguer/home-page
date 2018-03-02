class About::ResumesController < ApplicationController
	layout 'resume'

  def show
  	# @resume = Resume.last || Resume.create
  end

  def edit
  end

  def update
  end
end
