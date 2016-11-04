require 'watir-webdriver'
# require 'rspec'
# require 'require_all'
# require 'saucelabs'
# require 'nokogiri'
require 'require_all'
# require './features/support/modules/business_modules'

OR = YAML.load_file './lib/config/object_repository.yml'

require './lib/page_helper'
require './lib/data_helper'

require_all './lib/pages'

World DataHelper
# World Keywords
World PageHelper




