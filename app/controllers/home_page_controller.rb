class HomePageController < ApplicationController
  def welcome
    @post = Post.first
  end

  def show
    @post = Post.find(params[:id])
    render :welcome
  end
end
