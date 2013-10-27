$:.unshift File.dirname(__FILE__) + 'lib'
$:.unshift './lib', './spec'

require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new
task :default => :spec

desc "Ejecutando lib/frac_main.rb"
task :main do
	sh "ruby -Ilib lib/fracc.rb"
end

desc "Ejecutando tests"
task :spec do
	sh "rspec -Ilib -Ispec spec/frac_spec.rb"
end

desc "Ejecutando tests con formato: html"
task :thtml do
	sh "rspec --format html -Ilib -Ispec spec/frac_spec.rb > test.html"
end