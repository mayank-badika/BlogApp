class CommentsController < ApplicationController
  http_basic_authenticate_with name: "mayank", password: "password", only: :destroy
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to @article
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to @article
  end
  #Test comment
  private
  def comment_params
    params.require(:comment).permit(:commenter,:body)
  end
end
