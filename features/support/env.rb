require 'watir'
require 'require_all'
require 'page-object'
require 'selenium-webdriver'
require 'pretty_face'
require 'cucumber'
require 'page-object/page_factory'


OR = YAML.load_file './config/object_repository.yml'
require './lib/page_helper'
require './lib/data_helper'

require_all './lib/pages'

#World DataHelper
# World Keywords
# World PageHelper
World(PageObject::PageFactory)
