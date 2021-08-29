# File: app/controllers/comments_controller.rb
#
class CommentsController < ApplicationController
  def create
    @book = Book.find(params[:id])
    new_comment_text = params[:new_comment]
    if new_comment_text.blank?
      head :unprocessable_entity
    else
      @comment = Comment.new(text: new_comment_text)
      @book.comments << @comment
      render layout: false
    end
  end
end
