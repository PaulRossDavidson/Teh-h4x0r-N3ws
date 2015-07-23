class CommentController < ApplicationController
  def text
    :text
  end

  def user:references
  end

  def create
    @post = Post.find_by_id params[:post_id]
    @comment = @post.comment.create(comment_params)
    current_user.comments << @comment

  end

  def votable:references{polymorphic}
  end

  private
  def comment_params
    params.require(:comment).permit(:text)
  end

end
