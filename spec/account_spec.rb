# flytta senare till spec folder eller ATM_class
require './lib/account.rb'
require './lib/atm.rb'

describe Account do
    let(:person) {instance_double('Person', name: 'Thomas')}

    subject { described_class.new(owner: person)}
    

    it 'checks the length of a pin code' do 
        pin_code = rand(1000..9999)
        pin_code_length = Math.log10(pin_code).to_i + 1
        expect(pin_code_length).to eq 4
    end

    it 'is expected to have an expiry date on initialize' do
        expected_date = Date.today.next_year(5).strftime("%m/%y")
        expect(subject.exp_date).to eq expected_date
    end

    it 'is expected to have a balance of 0 on initialize' do
        expect(subject.balance).to eq 0
    end

    it 'is expected to have :active status on initialize' do
        expect(subject.account_status).to eq :active
    end

    it 'is expected to have an owner' do
        expect(subject.owner).to eq person
    end

    it 'is expected to raise error if no owner is set' do
        expect { described_class.new }.to raise_error 'An Account owner is required'
    end

    it 'deactivates account using the instance method' do
        subject.deactivate
        expect(subject.account_status).to eq :deactivated
    end

end

