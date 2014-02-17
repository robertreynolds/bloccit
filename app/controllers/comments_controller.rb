class CommentsController < ApplicationController
  def index
  end

  def new
  end

  def show
  end

  def edit
  end

  def create
    @post = Post.find(params[:post_id])
    @comments = current_user.posts.build(params[:post])
    @comments.post = @post.comments
    @comment.post = @post

    authorize! :create, @comments, message: "You need to be signed up to do that."
    if @comments.save
      redirect_to [@post, @comments], notice: "Comments were saved successfully."
    else
      flash[:error] = "There was an error saving the comments. Please try again."
      render :new
    end
  end
end
  