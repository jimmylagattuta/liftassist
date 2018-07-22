class Api::V1::LiftsController < ApplicationController
	skip_before_action :verify_authenticity_token

	def get_lifts
		lifts = Lift.all
		render json: lifts
	end
	
	def new_lift
		puts "*" * 100
		puts "NEW_LIFT"
		puts "params"
		puts params.inspect
		x = Lift.new(name: params['lift'])
		x.save
		message = {
			note: 'Received and saved.'
		}
		render json: message
		puts "*" * 100
	end

	def update_lift
		puts "*" * 100
		x = Lift.find_by(id: params['liftId'])
		x.ready = params['liftString']
		x.save
		puts "*" * 100
	end
end
