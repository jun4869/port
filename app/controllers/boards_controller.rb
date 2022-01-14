class BoardsController < ApplicationController
  def index
    @boards = Board.page(params[:page]).order(created_at: :desc)
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(board_params)
    if @board.save
      redirect_to boards_path
    end
  end

  def show
    @board = Board.find(params[:id])
    @posts = @board.posts.order(created_at: :desc)
  end

  private

  def board_params
    params.require(:board).permit(:title, :author)
  end
end
