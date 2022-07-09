class Api::V1::Users::SessionsController < Devise::SessionsController
	respond_to :json

	private

  def respond_with resource, _opts = {}
    render json: { message: 'You are not sign in into user session!' }, status: :ok
  end
		
	def respond_to_on_destroy
    log_out_success && return if current_user

    log_out_failure
	end

	def log_out_success
		render json: { message: 'You are sign out from user session!' }, status: 200
	end

	def log_out_failure
		render json: { message: 'Hmm nothing happened!' }, status: :unauthorized
	end
end
