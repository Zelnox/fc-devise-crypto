# Quick Documentation of how Rails/Devise handle encryption

See Gemfile for dependencies. This example was created using Ruby 2.0.0.

To install:

1. `bundle install` to install gems
2. create database with `bundle exec rake db:create`
3. create tables with `bundle exec rake db:migrate`
4. *run tests with `bundle exec rake test:units`*


Encryption is taken care by the Devise library, which uses bcrypt. (https://github.com/codahale/bcrypt-ruby)

When assigning a cleartext password to the model, the assignment method will encrypt it immediately
(https://github.com/plataformatec/devise/blob/v2.2.2/lib/devise/models/database_authenticatable.rb#L34)

which calls (https://github.com/plataformatec/devise/blob/v2.2.2/lib/devise/models/database_authenticatable.rb#L110)

The default number of `stretches` is 10 per (https://github.com/plataformatec/devise/blob/v2.2.2/lib/devise.rb#L52)
and the default `pepper` is nil per (https://github.com/plataformatec/devise/blob/v2.2.2/lib/devise.rb#L131)
