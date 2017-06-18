class LinksController < ApplicationController
  def create
    @board = Board.where(uuid: params[:board_id]).first
    @link = @board.links.create(link_params)
    redirect_to board_path(@board)
  end

  private

  def link_params
    params.require(:link).permit(:name, :url, :desc)
  end
end
