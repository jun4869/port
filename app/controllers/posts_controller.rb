class PostsController < ApplicationController
  before_action :set_board

  def new
    @post = @board.posts.new
  end

  def create
    @post = @board.posts.new(post_params)
    if @post.save
      redirect_to board_path(@board)
    end
  end

  private

  def set_board
    @board = Board.find(params[:board_id])
  end

  def post_params
    params.require(:post).permit(:contributor, :content)
  end
end
