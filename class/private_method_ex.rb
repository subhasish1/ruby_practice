class BankAccount
    def initialize(initial_balance)
      @balance = initial_balance
    end
    
    def withdraw(amount)
      if amount <= @balance
        @balance -= amount
        puts "Withdrawal successful. New balance: #{@balance}"
      else
        puts "Insufficient funds"
      end
    end
    
    private
    
    def balance
      @balance
    end
  end
  
  # Example usage
  account = BankAccount.new(100)
  account.withdraw(50)  # Output: Withdrawal successful. New balance: 50
  account.withdraw(70)  # Output: Insufficient funds
  
  # Trying to access balance directly will result in an error:
  # puts account.balance  # This will raise a NoMethodError