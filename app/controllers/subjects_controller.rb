require 'pry'
class SubjectsController < ApplicationController

	def index
		@subjects=Subject.all
	end
	def show
		@subject = Subject.find(params[:id])
	end
	def new
		@subject=Subject.new

	end
	def create
	 @subject=Subject.new(params[:subject])
	 if @subject.save
		 render :partial => 'subject', :object => @subject
	else		
	 	redirect_to url_for(:controller =>'subjects' , :action =>'index')
	 end
	end
	def edit
	end
	def update
	end
	def destroy
		@subject=Subject.find(params[:id])
		@books=@subject.books
		@books.each do |book|
			book.destroy
		end
		
		Subject.find(params[:id]).destroy
		#@subject.destroy
		#
		#Subject.find(params[:id]).destroy
		#@subject.destroy
		#@book=Book.find_by_subject_id(params[:id])
		

		@subjects = Subject.all
		 render :partial => 'index', :object => @subjects
	end
end
