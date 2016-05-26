require 'will_paginate'
require 'pry'
class BooksController < ApplicationController
	def index
		
		
		@books = Book.all.paginate({:page => params[:page], :per_page => 3 , :order => 'books.created_at DESC'})
	
	end
	def show
		@book = Book.find(params[:id])
	end
	def new
		@book = Book.new
		@subjects = Subject.find(:all)
	end
	def create
		@book = Book.new(params[:book])
		if @book.save
			redirect_to books_url
		else
			@subjects = Subject.find(:all)
			render :action => 'new'
		end
	end
	def edit
		@book = Book.find(params[:id])
		@subjects = Subject.find(:all)
	end
	def update
		@book = Book.find(params[:id])
		if @book.update_attributes(params[:book])
			redirect_to :action => 'show', :id => @book
		else
			@subjects = Subject.find(:all)
			render :action => 'edit'
		end
	end
	def delete
		Book.find(params[:id]).destroy
		redirect_to :action => 'index'
	end
	def show_subjects
		@subject = Subject.find(params[:id])
		#
		# render :controller => "subjects", :action=> "show", :object => @subject
	end

	def add_book
		@book=Book.new(params[:books])
		binding.pry
	
		@id=@book.subject_id
		binding.pry
		if @book.save
			binding.pry
			@subject=Subject.find(@id)
			
		render :update do |page|
			
  		page.replace_html 'book_list', :partial => 'shared/show', :object => @subject
  			
		end
		else
		
			@subjects = Subject.all
			render :controller => "subjects" , :action => "show" , :object => @subjects
		end
	end
end
