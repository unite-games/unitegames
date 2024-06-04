class GamesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show ]
  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(games_params)
    @game.user_id = current_user.id

    if @game.save
      redirect_to @game
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def games_params
    params.require(:game).permit(:user_id, :title, :category, :price)
  end
end
