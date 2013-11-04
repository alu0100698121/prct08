$:.unshift File.dirname(__FILE__) + 'lib'
$:.unshift './lib', './spec'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new

task :default => :spec

desc "Espectativas de la clase Matriz" 
task :test do
	sh "rspec -I. spec/matrices_spec.rb --format documentation"
end

desc "Espectativas de la clase Matriz, con documentacion HTML"
task :thtml do
	sh "rspec -I. spec/matrices_spec.rb --format html"
end

desc "Ejecutar el programa principal"
task :bin do
	sh "ruby -Ilib/ lib/matrices.rb"
end