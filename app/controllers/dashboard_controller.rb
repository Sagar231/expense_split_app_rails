class DashboardController < ApplicationController
    def index
        @user = current_user
        @groups = @user.groups
        @total_expenses = @user.expenses.sum(:amount)
    end
end
