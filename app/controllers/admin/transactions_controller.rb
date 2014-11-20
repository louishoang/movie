module Admin
  class TransactionsController < ApplicationController
    before_filter :admin_authorize!
    before_action :set_transaction, only: [:destroy, :edit, :update]

    def index
      @transactions = Transaction.all.page params[:page]
      @average = Transaction.average(:amount)
      @total = Transaction.sum(:amount)
    end

    def new
      @transaction = Transaction.new
    end

    def create
      @transaction = Transaction.new(transaction_params)
      if @transaction.transaction_type == "expense"
        @transaction.amount *= -1
      end
      if @transaction.save
        redirect_to admin_transactions_path, notice: "Transaction created successfully!"
      else
        render "new"
      end
    end

    def edit
    end

    def update
      @transaction.update(transaction_params)
      if @transaction.save
        redirect_to admin_transactions_path, notice: "Transaction created successfully!"
      else
        render "edit"
      end
    end

    def destroy
      @transaction.destroy
      flash[:notice] = "Transaction has been deleted successfully"
      redirect_to admin_transactions_path
    end
    private

    def transaction_params
      params.require(:transaction).permit(:name, :source, :amount, :transaction_type, :description)
    end

    def set_transaction
      @transaction = Transaction.find(params[:id])
    end

  end
end
