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
USE_PIPPI=true bundle exec ruby test/models/book_test.rb
```

And look!  There's some output in log/pippi.log.  Something like:

```text
/Users/tomcopeland/github.com/pippi_demo/.bundle/gems/activesupport-4.0.10/lib/active_support/callbacks.rb,ReverseFollowedByEach,402
/Users/tomcopeland/github.com/pippi_demo/app/models/book.rb,ReverseFollowedByEach,8
/Users/tomcopeland/github.com/pippi_demo/app/models/book.rb,SelectFollowedByFirst,12
/Users/tomcopeland/github.com/pippi_demo/app/models/book.rb,SelectFollowedBySize,16
```

## Development

TODO consider using a custom test runner as described here http://dormsoft.com/doc/minitest-4.7.5/rdoc/