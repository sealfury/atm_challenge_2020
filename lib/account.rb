require './lib/atm.rb'

class Account
    attr_accessor :account_status, :pin_code, :exp_date, :owner, :balance

    STANDARD_VALIDITY_YRS = 5

    require 'date'

    def initialize(attrs = {})
        @account_status = :active
        @pin_code = rand(1000..9999)
        @exp_date = '10/25'
        set_owner(attrs[:owner])
        @balance = 0
    end

    def set_expire_date
        Date.today.next_year(Account::STANDARD_VALIDITY_YRS).strftime('%m/%y')
    end

    def deactivate
        @account_status = :deactivated
    end

    private 

    def set_owner(obj)
        obj == nil ? missing_owner : @owner = obj
    end

    def missing_owner
        raise "An Account owner is required"
    end
end