# Definition of DisplayAccountsMessage Class
class DisplayAccountsMessage < SuccessMessage
  attr_reader :accounts

  def initialize(accounts)
    super
    @accounts = accounts
    @main = build_main
  end

  def build_main
    @accounts.map do |a|
      "ID: #{a.id}, Balance: #{a.output_balance}, Type: #{a.type}"
    end
  end
end
