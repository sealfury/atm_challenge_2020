
require './lib/person.rb'
require './lib/atm.rb'

describe Person do

    subject { descibe_class.new(name: 'Thomas')}

    it 'is expected to have a :name on initialize' do
        expect(subject.name).not_to be nil
    end

    it 'is expected to raise an error if no name is set' do
        expect { described_class.new }.to raise_error 'A name id reqired'
    end

    it 'is expected to have :cash attribute with the value of 0 on initialize' do
        expect(subject.cash).to eq 0
    end

    it 'is expected to have a :account attribute' do 
        expect(subject.account).to be nill
    end

    descibe 'can create an Account' do 
        before {subject.create_account }
        it 'of Account class ' do
            expect(subject.account).to be_an_instance_of Account
        end
        
        it 'with himself as a owner' do
            expect(subject.account.owner).to be subject
        end
    end

    descirbe 'can manage funds if an account been created' do
        let(:atm) { Atm.new }
        before { subject.create_account }
            it 'can deposit funds' do 
                expect(subject.deposit(100)).to be_truthy
            end
            descibe 'can not manage funds if no account been created' do #bör kanske flyttas
                it 'can not deposit funds' do
                    expect { subject.deposit(100) }.to raise_error(RuntimeError, 'no account pressent')
                end 
            end
            
    end

    
end