# Bank Class Design Recipe

## 1. Describe the Problem

Given a client makes a deposit of 1000 on 10-01-2023
And a deposit of 2000 on 13-01-2023
And a withdrawal of 500 on 14-01-2023
When she prints her bank statement
Then she would see

date || credit || debit || balance
14/01/2023 || || 500.00 || 2500.00
13/01/2023 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00

## 2. Design the Class Interface

```ruby
# EXAMPLE

class Bank
  def initialize() 
  # Initialises a total balance counter
  # Initialises an array of transactions
  end

  def deposit(deposit_amount) 
  # Asks user for deposit amount
  # No return value
  # Adds deposit amount to total balance counter
  # Stores date of deposit
  end

  def withdraw(withdrawal_amount)
  # Asks user for withdrawal amount
  # No return value
  # Removes withdrawal amount from total balance counter
  # Stores date of withdrawal
  end

  def print_statement()
  # Returns a bank statement with date, credit, debit and balance columns
  end
end
```

## 3. Create Examples as Tests

```ruby
# EXAMPLE

# 1
bank = Bank().new
bank.deposit(100)
bank.print_statement() # =>   date || credit || debit || balance
                       #      14/11/22 || 100 || || 100

# 2
bank = Bank().new
bank.deposit(1000)
bank.withdraw(100)
bank.print_statement() # =>   date || credit || debit || balance
                       #      14/11/22 || || 100 || 900        
                       #      14/11/22 || 1000 || || 1000

# 3
bank = Bank().new
bank.deposit(1000)
bank.deposit(1000)
bank.print_statement() # =>   date || credit || debit || balance
                       #      14/11/22 || 1000 || || 2000       
                       #      14/11/22 || 1000 || || 1000

# 4
bank = Bank().new
bank.deposit(1000)
bank.withdraw(500)
bank.deposit(1000)
bank.print_statement() # =>   date || credit || debit || balance
                       #      14/11/22 || 1000 || || 1500       
                       #      14/11/22 || || 500 || 500                         
                       #      14/11/22 || 1000 || || 1000
```

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
