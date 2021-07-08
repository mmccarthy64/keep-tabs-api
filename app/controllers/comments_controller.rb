class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :update, :destroy]

  # GET /comments
  def index
    if params[:book_id]
      book = Book.find_by(id: params[:book_id])
      comments = book.comments
      render json: comments
    else
      comments = Comment.all
      render json: comments
    end
  end

  # GET /comments/1
  def show
    comment = Comment.find(params[:id])
    options = {
      include: [:book]
    }
    render json: CommentSerializer.new(comment, options)
  end

  # POST /comments
  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      render json: @comment, status: :created, location: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /comments/1
  def update
    if @comment.update(comment_params)
      render json: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /comments/1
  def destroy
    @comment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def comment_params
      params.require(:comment).permit(:book_id, :content)
    end
end
