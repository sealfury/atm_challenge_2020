# ATM Challege October 2020
============================

## The Code

**This code will perform the following actions described in user stories:**

The code will create an ATM with funds that a person can withdraw:
```
As a User
In order to make a withdrawal
The ATM needs to have funds
```
The code will let the person know if their withdrawal was successful:
```
As a User
In order to know if my withdrawal was successful
I want to receive a message with my withdrawal details
```
The ATM will test whether each person has a separate account:
```
As an ATM operator
In order for the right person to make a withdrawal
I want each person to have a separate account
```
The ATM will only allow withdrawal if the person has sufficient funds:
```
As an ATM operator
In order to ensure that an account holder can only withdraw funds that he has the balance for
I want to allow a withdrawal only if there are sufficient funds in the account
```
The code will only allow withdrawal if there are enough funds in the ATM:
```
As an ATM operator
In order for our customers to withdraw funds
I need to make sure that withdrawals are only allowed if funds are available
```
The ATM will only allow withdrawal if the user enters the correct pin code:
```
As a customer
In order to keep my funds secure
I want a secure pin code and an expiry date on my card that allows only me access to my funds
```
The ATM will only permit customers with active accounts with withdraw funds:
```
As an ATM operator
In order to allow access only to active customers
I want to allow withdrawals only from active accounts
```
The ATM will permit withdrawals only in certain denominations:
```
As a customer
In order to withdraw funds in even amounts
I want to receive only $5, $10, and/or $20 bills
```
The customer will have a personal account:
```
As a customer
In order to manage my funds
I need to have a personal account
```
The ATM will only allow one account per customer:
```
As an ATM operator
In order to keep track of our customers
We want to assign each account to a separate person
```



## Dependencies
- # Gems: 
- `rspec` 
- `pry-byebug`
- `irb` 
Written in **Ruby (v2.7.2)**
Tested in **Rspec (v.3.9.0)**

## Setup
**Obtain the Code:** `git clone` [This Repository](https://github.com/sealfury/atm_challenge_2020/blob/master/README.md)

**Install Bundler:** `gem install bundler`
**Install irb:** `gem install irb`


## Instructions

**Initialise irb by typing `irb` in your terminal, then enter the following commands:**
- *Create an ATM with $1000 available funds:* `atm = Atm.new`
- *Create a person named William to use the ATM:* `person = Person.new(name: 'William')`
- *Allow William to create an account:* `person.create_account`
- *Make sure William has cash to deposit into their account:* `person.cash = 100`
- *Deposit some of William's cash into his account:* `person.deposit(50)` 
- *Withdraw a portion of the deposited funds back into William's hands:* `person.withdraw(amount: 20, pin: person.account.pin_code, account: person.account, atm: atm)`
- *Should you wish to deactivate William's account:* `person.account.deactivate`

NB: Withdrawals and deposits may only be made in bill denominations of 20, 10, and 5


## Acknowledgments

[Class vs Instance Variables](https://medium.com/@lauren.kroner/ruby-class-vs-instance-methods-a5182ce7de49)

[Magic Numbers and SCREAMING_SNAKE_CASE](https://eliotsykes.com/2015/08/18/magic-numbers/)

[Ternary Operator](https://www.rubyguides.com/2019/10/ruby-ternary-operator/)

[CraftOverflow Help With Disabled User Account](https://github.com/CraftAcademy/CraftOverflow/issues/45 "Thanks Faraz!")

[Raise_error Matcher on Relish](https://relishapp.com/rspec/rspec-expectations/v/2-8/docs/built-in-matchers/raise-error-matcher)

## Updates/Improvement Plans

We would very much like to refactor the withdrawal method to streamline the code

## License 

Licensed under MIT-License 