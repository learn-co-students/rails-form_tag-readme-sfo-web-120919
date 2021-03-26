require 'pry'

class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    
    #binding.pry

    @post = Post.find(params[:id])
  end 

  def new
    
  end

  def create
    #binding.pry
    @post = Post.create(title: params[:title], description: params[:description])
    redirect_to(@post)
  end 
  


  
  
end
