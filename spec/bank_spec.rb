require 'bank'

RSpec.describe Bank do
  context "testing basic deposit" do
    it "deposits 100 and prints this in the statement" do
      bank = Bank.new
      bank.deposit(100)
      expect(bank.print_statement()).to include("date || credit || debit || balance")
      expect(bank.print_statement()).to include("100")
    end

    it "deposits 1000 and prints this in the statement" do
      bank = Bank.new
      bank.deposit(1000)
      expect(bank.print_statement()).to include("date || credit || debit || balance")
      expect(bank.print_statement()).to include("1000")
    end
  end

  context "testing basic withdraw" do
    it "deposits 1000, withdraws 100 and shows this final balance" do
      bank = Bank.new
      bank.deposit(1000)
      bank.withdraw(100)
      expect(bank.print_statement()).to include("date || credit || debit || balance")
      expect(bank.print_statement()).to include("900")
    end

    it "deposits 2000, withdraws 200 and shows this final balance" do
      bank = Bank.new
      bank.deposit(2000)
      bank.withdraw(200)
      expect(bank.print_statement()).to include("date || credit || debit || balance")
      expect(bank.print_statement()).to include("800")   
    end
  end

  context "testing complex bank transcations" do
    it "deposits multiple sums of money and has an accurate final balance" do
      bank = Bank.new
      bank.deposit(1000)
      bank.deposit(1000)
      expect(bank.print_statement()).to include("date || credit || debit || balance")
      expect(bank.print_statement()).to include("2000")
    end

    it "completes a variety of transcations and has an accurate final balance" do
      bank = Bank.new
      bank.deposit(1000)
      bank.withdraw(500)
      bank.deposit(1000)
      expect(bank.print_statement()).to include("date || credit || debit || balance")
      expect(bank.print_statement()).to include("1500")
    end
  end
  
  context "testing the statement method" do
    it "displays the statement header" do
      bank = Bank.new
      expect(bank.print_statement()).to include("date || credit || debit || balance")
    end
  end
end