desc "Ejecutando lib/frac_main.rb"
task :default do
	sh "ruby -Ilib lib/fracc.rb"
end

desc "Ejecutando tests"
task :test do
	sh "rspec --color --format documentation -Ilib -Ispec spec/frac_spec.rb"
end

desc "Ejecutando tests con formato: html"
task :thtml do
	sh "rspec --format html -Ilib -Ispec spec/frac_spec.rb > test.html"
end
