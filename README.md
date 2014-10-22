## Pippi demo

This application demonstrates how to run Pippi on a Rails app.

```bash
# Clone this demo app
git clone https://github.com/tcopeland/pippi_demo
cd pippi_demo
# do whatever RVM/rbenv/chruby thing you do; use Ruby 2.0 or higher
# install the gems
bundle
# create the database
bundle exec rake db:create
bundle exec rake db:migrate
# and run the demo!
pippi_demo> $ USE_PIPPI=true bundle exec ruby test/models/book_test.rb && cat log/pippi.log
Run options: --seed 62731

# Running tests:

......

Finished tests in 0.016074s, 373.2736 tests/s, 124.4245 assertions/s.

6 tests, 2 assertions, 0 failures, 0 errors, 0 skips
/Users/tomcopeland/github.com/pippi_demo/.bundle/gems/activesupport-4.0.10/lib/active_support/callbacks.rb,ReverseFollowedByEach,402
test/models/book_test.rb,AssertWithNil,29
/Users/tomcopeland/github.com/pippi_demo/app/models/book.rb,ReverseFollowedByEach,8
/Users/tomcopeland/github.com/pippi_demo/app/models/book.rb,SelectFollowedByFirst,12
/Users/tomcopeland/github.com/pippi_demo/app/models/book.rb,SelectFollowedBySize,16
```

## Development

TODO consider using a custom test runner as described here http://dormsoft.com/doc/minitest-4.7.5/rdoc/