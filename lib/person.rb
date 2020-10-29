require './lib/account.rb'
require './lib/atm.rb'

class Person
    attr_accessor :name, :cash, :account

    def initialize(attrs = {})
        @name = get_name(attrs[:name])
        @cash = 0
        @account = nil
    end

    def create_account
        @account = Account.new(owner: self)
    end

    def deposit(amount)
        @account = nil ? no_account : deposit_funds(amount)
    end

    private

    def get_name(name)
        name == nil ? missing_name : name
    end

    def deposit_funds(amount)
        amount == 100
    end

    def missing_name
        raise 'A name is required'
    end

    def no_account
        raise(RuntimeError, 'no account pressent')
    end

end