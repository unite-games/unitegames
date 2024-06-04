class TransactionsController < ApplicationController
  before_action :set_game, only: [:new, :create]

  def new
    @transaction = Transaction.new
  end

<<<<<<< HEAD


=======
  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.game = @game
    @transaction.user_id = current_user.id
    if @transaction.save
      # order was saved
      redirect_to "pages#home", notice: 'Your order was successfully created!'
    else
      # deu ruim, não salvou por erro de validação
      render :new, status: :unprocessable_entity
    end
  end

  def transaction_params
    params.require(:transaction).permit(:datetime, :game_id, :user_id)
  end

  def set_game
    @game = Game.find(params[@game])
  end
>>>>>>> master
end
