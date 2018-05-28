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
    if valid?
      @sender -= amount
      @receiver += amount
    end
  end
end
