require 'date'

class Bank
  attr_reader :balance 

  def initialize(balance=0) 
    # Initialises a total balance counter
    @balance = balance
    @all_transactions = []
    # Initialises an array of transactions
  end

  def access
    puts "Welcome to your bank account."
    def instruction_message
      puts "What would you like to do today?"
      access_response = gets.chomp.downcase
      case access_response
        when "deposit"
          deposit
        when "withdraw"
          withdraw
        when "balance"
          puts "£#{@balance}"
          instruction_message
        when "statement"
          statement
        when "finish"
          exit
        else 
          puts "Please select from the following options\n 1) Balance\n 2) Deposit\n 3) Withdraw\n 4) Statement\n 5) Finish"
          instruction_message
        end
    end
    instruction_message
  end
  
  def deposit
    # Asks user for deposit amount
    puts "How much would you like to deposit?"
    deposit_amount = gets.chomp.to_i
    # Adds deposit amount to total balance counter
    @balance += deposit_amount
    puts "Your new balance is £#{@balance}."
    dep_time = DateTime::now
    deposit_date = "#{dep_time.year}/#{dep_time.month}/#{dep_time.day}"
    @all_transactions << "#{deposit_date} || +£#{deposit_amount} || || £#{balance}"
    # puts @all_transactions
    instruction_message
    # Stores date of deposit
  end
  
  def withdraw
    # Asks user for withdrawal amount
    puts "How much would you like to withdraw?"
    withdrawal_amount = gets.chomp.to_i
    # Removes withdrawal amount from total balance counter
    @balance -= withdrawal_amount
    puts "Your new balance is £#{@balance}."
    with_time = DateTime::now
    withdrawal_date = "#{with_time.year}/#{with_time.month}/#{with_time.day}" 
    @all_transactions << "#{withdrawal_date} || || -£#{withdrawal_amount} || £#{balance}"
    # puts @all_transactions
    instruction_message
    # Stores date of withdrawal
  end
  
  def statement()
    # puts "date || credit || debit || balance\n || || || #{@balance}"
    # Returns a bank statement with date, credit, debit and balance columns
    puts 'Date || Credit || Debit || Balance'
    puts @all_transactions.reverse
    instruction_message
  end
end

# puts DateTime::now.to_s 

bank = Bank.new
bank.access

# Didn't TDD the irb functionality. Next step: TDD the statement method.
# Didn't TDD the statement method. Next step: Write tests.