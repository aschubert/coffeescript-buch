class Api::TasksController < ApplicationController

	def index
		render json: Task.all
	end

	def show
		render json: task
	end

	def create
		task = Task.create!(safe_params)
		render json: task, status: 201
	end

	def update
		task.update_attributes(safe_params)
		render nothing: true, status: 204
	end

	def destroy
		task.destroy
		render nothing: true, status: 204
	end

private
	def safe_params
		params.require(:task).permit(
			:id,
	  		:name,
	  		:done
		)		
	end

	def task
		@task ||= Task.find(params[:id])
	end

end
