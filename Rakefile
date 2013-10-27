$:.unshift File.dirname(__FILE__) + 'lib'
$:.unshift './lib', './spec'

require 'rspec/core/rake_task'

Rspec::Core::RakeTask.new
task :default => :spec

desc "Ejecutando lib/frac_main.rb"
task :main do
	sh "ruby -Ilib lib/fracc.rb"
end

desc "Ejecutando tests"
task :spec do
<<<<<<< HEAD
	sh "rspec --color --format documentation -Ilib -Ispec spec/frac_spec.rb"
=======
	sh "rspec frac_spec.rb"
>>>>>>> 0d717024c141d25c93c561754ba7bbec59115697
end

desc "Ejecutando tests con formato: html"
task :thtml do
	sh "rspec --format html -Ilib -Ispec spec/frac_spec.rb > test.html"
end
