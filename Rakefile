#!/usr/bin/env rake
begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

Bundler::GemHelper.install_tasks

task :spec do
  %w(core).each do |project|
    system(%(cd #{project} && bundle exec rake spec))
  end
end

task default: :spec
