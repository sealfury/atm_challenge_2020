require './lib/account.rb'
require './lib/atm.rb'
require 'pry-byebug'

class Person
    attr_accessor :name, :cash, :account, 

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

    def no_account
        raise RuntimeError, 'no account present'
    end

    def withdraw(args = {})
        @account == nil ? missing_account : withdraw_funds(args)
    end

    private

    def get_name(name)
        name == nil ? missing_name : name
    end

    def deposit_funds(amount)
        @cash -= amount
        @account.balance += amount
    end

    def withdraw_funds(args)
        args[:atm] == nil ? missing_atm : atm = args[:atm]
        account = @account 
        amount = args[:amount]
        pin = args[:pin]
        response = atm.withdraw(amount, pin, account)
        response[:status] == true ? increase_cash(response) : response
    end

    def increase_cash(response)
        @cash += response[:amount]
    end

    def missing_name
        raise 'A name is required'
    end

    def missing_atm
        raise RuntimeError, 'An ATM is required'
    end

end