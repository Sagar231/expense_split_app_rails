json.extract! expense, :id, :description, :amount, :user_id, :group_id, :created_at, :updated_at
json.url expense_url(expense, format: :json)
