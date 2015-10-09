require 'rake/testtask'

task default: 'test'

TestTask.new("test:features" => "test:prepare") do |t|
  t.pattern = "test/**/*_test.rb"
end
