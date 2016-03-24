require "spi/automation/version"

module Spi
  module Automation
    # Your code goes here...
    puts "spi automation gem (c)2016"

  end
end

def on(class_name)
	yield class_name.new(@browser)
end


$LOAD_PATH << './support'

Dir.mkdir Dir.pwd + '/log' unless Dir.exists?(Dir.pwd + '/log')
Dir.mkdir Dir.pwd + '/log/screenshots' unless Dir.exists?(Dir.pwd + '/log/screenshots')
Dir.mkdir Dir.pwd + '/log/screenshots/pass' unless Dir.exists?(Dir.pwd + '/log/screenshots/pass')
Dir.mkdir Dir.pwd + '/log/screenshots/fail' unless Dir.exists?(Dir.pwd + '/log/screenshots/fail')


require 'selenium-webdriver'
require 'page-object'
require 'require_all'
require 'yaml'
require 'awesome_print'

$user = YAML.load_file('config/user.yml')
$framework = YAML.load_file('config/framework.yml')
$test_data = YAML.load_file('config/data/test_data.yml')

require_all './lib'




