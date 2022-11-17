class Statement
  def initialize
    header = 'date || credit || debit || balance'
    allTransactions = []
  end

  def addTransaction(transaction)
    allTransactions.push(transaction)
  end

  def formatTransactions
    def formattedTransactions 
      allTransactions.map {|transaction|
        if transaction.deposit > 0
          return "#{transaction.date} || #{transaction.deposit.round(2)} || || #{transaction.balance.round(2)} "
        elsif transaction.withdraw > 0
          return "#{transaction.date} || || #{transaction.withdraw.round(2)} || #{transaction.balance.round(2)} "
        end
      }.reverse
    end
    return formattedTransactions.join('\n')
  end

  def printStatement
    return "#{header}\n#{formatTransactions}"
  end
end