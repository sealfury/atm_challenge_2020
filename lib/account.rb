class Account
    attr_accessor :account_status
    attr_accessor :pin_code
    attr_accessor :exp_date

    STANDARD_VALIDITY_YRS = 5

    require 'date'

    def initialize
        @account_status = :active
        @pin_code = rand(1000.9999)
        @exp_date = '10/25'
    end

    def set_expire_date
        Date.today.next_year(Account::STANDARD_VALIDITY_YRS).strftime('%m/%y')
    end
end

    
