## Pippi demo

This application demonstrates how to run Pippi on a Rails app.

```bash
# Clone both pippi and pippi_demo
# Sorry, has to be like this until I release a pippi gem
git clone https://github.com/tcopeland/pippi
git clone https://github.com/tcopeland/pippi_demo
cd pippi_demo
# do whatever RVM/rbenv/chruby thing you do; use Ruby 2.0 or higher
bundle exec rake db:create
bundle exec rake db:migrate
USE_PIPPI=true bundle exec ruby test/models/book_test.rb
```

And look!  There's some output in log/pippi.log.

## Development

TODO consider using a custom test runner as described here http://dormsoft.com/doc/minitest-4.7.5/rdoc/