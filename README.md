# Bank App tech test

## Specification

- Make a deposit
- Make a withdrawal (users are allowed to be overdrawn)
- Display bank balance
- Print a statement with the date, transaction and balance shown as below

```
Date || Credit || Debit || Balance
14/01/2023 || || -£500 || £2500
13/01/2023 || +£2000 || || £3000
10/01/2023 || +£1000 || || £1000
```


## Setup

This assumes you have Ruby and RVM installed.

Update to the latest version of Ruby:
```
$ rvm get stable
$ rvm use ruby --latest --install --default
```

Install bundler:
```
$ gem install bundler
```

Create a bundler project:
```
$ bundle init
```

And add RSpec to your dependecies:
```
$ bundle add rspec
```

Generate an RSpec template:
```
$ rspec --init
```

Run tests:
``` bash
# Comment out line 80 of bank.rb (bank.access)
$ rspec
```

## Using the App
From within the project directory:
```bash
# Run the app in terminal(from the parent directory):
$ ruby lib/bank.rb
```

## Improvements

- Tests need to be rewritten as I changed my approach during the Bank class' development. Despite the app working, currently all the tests fail.

- Apply myself more to TDD. I began strong and then left it behind as I realised that my design was changing. In my External Review sessions, we are working on my TDD application and I have improved since my last one.

