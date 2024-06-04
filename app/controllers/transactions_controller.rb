class TransactionsController < ApplicationController
  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(transaction_params)
    if @transaction.save
      # deu bom
      redirect_to restaurant_path(@restaurant)
    else
      # deu ruim, não salvou por erro de validação
      render :new, status: :unprocessable_entity
    end
  end

  def transaction_params
    params.require(:transaction).permit(:datetime, :game_id, :user_id)
  end
end
