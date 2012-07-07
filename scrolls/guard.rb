gem_group :guard do
  gem 'listen'
  gem 'guard-bundler'
  gem 'guard-test' if scrolls.include? 'test_unit'

  %w(haml less passenger puma resque unicorn spork rspec cucumber).each do |scroll|
    gem "guard-#{scroll}" if scrolls.include? scroll
  end
end

after_bundler do
  run 'bundle exec guard init'
end

__END__

name: Guard
description: Command line tool to file system modification events; Powers Up with other scrolls!
author: drnic
website: https://github.com/guard/guard

requires: []
run_after: []
run_before: []

category: other
