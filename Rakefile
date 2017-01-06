# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

require 'rake/testtask'

   Rake::TestTask.new do |t|
      t.libs = ["lib", "test"]
      t.name = "test:predeployment"
      t.test_files = FileList['test/controllers/*.rb','test/helpers/*.rb','test/mailers/*.rb','test/models/*.rb']
    end
   Rake::TestTask.new do |t|
      t.libs = ["lib", "test"]
      t.name = "test:postdeployment"
      t.test_files = FileList['test/integration/*.rb']
    end
