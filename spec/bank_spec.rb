require 'bank'

RSpec.describe Bank do
  context "testing basic deposit" do
    it "deposits 100 and prints this in the statement" do
      bank = Bank.new
      bank.deposit(100)
      expect(bank.print_statement()).to include("date || credit || debit || balance")
      expect(bank.print_statement()).to include("14/11/22 || 100 || || 100")
    end

    it "deposits 1000 and prints this in the statement" do
      bank = Bank.new
      bank.deposit(1000)
      expect(bank.print_statement()).to include("date || credit || debit || balance")
      expect(bank.print_statement()).to include("14/11/22 || 1000 || || 1000")
    end
  end

  context "testing basic withdraw" do
    it "deposits 1000, withdraws 100 and prints this in the statement" do
      bank = Bank.new
      bank.deposit(1000)
      bank.withdraw(100)
      expect(bank.print_statement()).to include("date || credit || debit || balance")
      expect(bank.print_statement()).to include("14/11/22 || || 100 || 900")
      expect(bank.print_statement()).to include("4/11/22 || 1000 || || 1000")
    end

    it "deposits 2000, withdraws 200 and prints this in the statement" do
      bank = Bank.new
      bank.deposit(2000)
      bank.withdraw(200)
      expect(bank.print_statement()).to include("date || credit || debit || balance")
      expect(bank.print_statement()).to include("14/11/22 || || 200 || 800")
      expect(bank.print_statement()).to include("4/11/22 || 2000 || || 2000")      
    end
  end

  context "testing complex bank transcations" do
    it "deposits multiple sums of money" do
      bank = Bank.new
      bank.deposit(1000)
      bank.deposit(1000)
      expect(bank.print_statement()).to include("date || credit || debit || balance")
      expect(bank.print_statement()).to include("14/11/22 || 1000 || || 2000")
      expect(bank.print_statement()).to include("14/11/22 || 1000 || || 1000")
    end

    it "prints statements with a variety of transcations accurately" do
      bank = Bank.new
      bank.deposit(1000)
      bank.withdraw(500)
      bank.deposit(1000)
      expect(bank.print_statement()).to include("date || credit || debit || balance")
      expect(bank.print_statement()).to include("14/11/22 || 1000 || || 1500")
      expect(bank.print_statement()).to include("14/11/22 || || 500 || 500")
      expect(bank.print_statement()).to include("14/11/22 || 1000 || || 1000")
    end
  end
end