class LinksController < ApplicationController
  def create
    @board = Board.find(params[:board_id])
    @link = @board.links.create(link_params)
    redirect_to board_path(@board)
  end

  private

  def link_params
    params.require(:link).permit(:name, :url, :desc)
  end
end
