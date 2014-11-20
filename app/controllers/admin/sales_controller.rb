module Admin
  class SalesController < ApplicationController
    def index
      @transactions = Transaction.all.page params[:page]
    end

    def new
      @transaction = Transaction.new
    end

    def create
      @transaction = Transaction.new(transaction_params)

      if @transaction.save
        redirect_to admin_sales_path, notice: "Transaction created successfully!"
      else
        render "new"
      end
    end

    private

    def transaction_params
      params.require(:transaction).permit(:name, :source, :amount, :transaction_type, :description)
    end

  end
end
