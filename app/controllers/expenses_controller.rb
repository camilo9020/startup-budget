class ExpensesController < ApplicationController
  before_action :authenticate_user!

  def index
    @expenses = Expense.all
  end

  def new
    @expense = Expense.new
  end

  def create
    @expense = current_user.expenses.new(expense_params)
    @expense.save
  end

  def edit
    @expense = Expense.find(params[:id])
  end

  def update
    @expense = current_user.expenses.find(params[:id])
    @expense.update_attributes(expense_params)
  end

  def destroy
    @expense = current_user.expenses.find(params[:id])
    @expense.destroy
  end

  private

  def expense_params
    params.require(:expense).permit(:category, :concept, :amount)
  end

end
