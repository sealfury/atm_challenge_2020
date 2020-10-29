require './lib/account.rb'
require './lib/atm.rb'
require 'pry-byebug'

class Person
    attr_accessor :name, :cash, :account

    def initialize(attrs = {})
        @name = get_name(attrs[:name])
        @cash = 100
        @account = nil
    end

    def create_account
        @account = Account.new(owner: self)
    end

    def deposit(amount)
        @account = nil ? no_account : deposit_funds(amount)
    end

    def no_account
        raise RuntimeError, 'no account present'
    end


    private

    def get_name(name)
        name == nil ? missing_name : name
    end

    def deposit_funds(amount)
        # @account += amount
        @cash -= amount
    end


    def missing_name
        raise 'A name is required'
    end

end