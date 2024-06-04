class TransactionsController < ApplicationController
  before_action :set_game, only: [:new, :create]

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new
    @transaction.game = @game
    @transaction.user = current_user
    if @transaction.save
      # order was saved
      redirect_to game_path(@game), notice: 'Your order was successfully created!'
    else
      # erro happened while saving the order
      render :new, status: :unprocessable_entity
    end
  end

  def set_game
    @game = Game.find(params[:game_id])
  end
end
