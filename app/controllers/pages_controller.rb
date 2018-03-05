class PagesController < ApplicationController
	def home 
		@users = User.all 
		@cats = Cat.all 
		@todos = Todo.all
	end

	def new 

	end

	def create
		t = Todo.new 
		t.tasks = params[:todo][:tasks]
		t.finished = params[:todo][:finished]
		t.save
		redirect_to "/"
	end
end
