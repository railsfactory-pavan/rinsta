class HomeController < ApplicationController
	before_action :authenticate_user!

	def show
	  render json: { message: 'If you are able to see this, means you are sign in to your user session!' }, status: 200
  end
end
