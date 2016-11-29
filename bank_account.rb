class BankAccount

  def initialize(transactions)
    @transactions = transactions
  end

  def filter_todays_transactions
    @transactions.select{|t| t.purchase_date == Date.today}
  end

  def total_spent_today
    filter_todays_transactions.inject(0) do |sum, transaction|
      sum + transaction.purchase_price
    end
  end
end
