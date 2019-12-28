class BankAccount
  attr_accessor :balance, :status
  attr_reader :name

  def initialize(account_name)
    @name = account_name
    @balance = 1000
    @status = "open"
  end

  def deposit(money)
    @balance += money
  end

  def display_balance
    "Your balance is $#{@balance}."
  end

  def valid?
    @status == "open" && @balance > 0 ? true : false
  end

  def close_account
    @status = "closed"
  end
end

# class BankAccount
#   attr_reader :name
#   attr_accessor :balance, :status, :account_hash
#
#   def initialize(name)
#     @name = name
#     @balance = 1000
#     @status = "open"
#   end
#
#   def deposit(deposit_amount)
#     @balance += deposit_amount
#   end
#
#   def display_balance
#     p "Your balance is $#{self.balance}."
#   end
#
#   def status=(status)
#     @status
#   end
#
#   def balance=(balance)
#     @balance
#   end
#
#   def valid?
#     (!!status == 'open') || (!!balance > 0)
#   end
#
# def account_hash
#     instance_variables.map do |var|
#         [var[1..-1].to_sym, instance_variable_get(var)]
#     end.to_h
#   end
#
# end
