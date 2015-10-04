require 'rake/testtask'

task default: 'test'

Rails::TestTask.new("test:features" => "test:prepare") do |t|
  t.pattern = "test/**/*_test.rb"
end
