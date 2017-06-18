# frozen_string_literal: true
# The boards controller
class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end

  def create
    @board = Board.new(board_params)
    @board.save
    redirect_to @board
  end

  def new; end

  def show
    @board = Board.where(uuid: params[:id]).first
  end

  private

  def board_params
    params.require(:board).permit(:uuid, :name)
  end
end
