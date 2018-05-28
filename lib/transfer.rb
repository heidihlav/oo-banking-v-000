class Transfer
  attr_accessor :status
  attr_reader :sender, :receiver, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    sender.valid? && receiver.valid?
    # binding.pry
  end

  def execute_transaction
    if valid? && @sender.balance && @status = "pending"
      @sender.balance -= amount
      @receiver.balance += amount
      # binding.pry
      @status = "complete"
    end

  end
end
