# module PageHelper
#
#
#   # http://watirmelon.com/2011/06/07/removing-local-page-references-from-cucumber-steps/
#   # http://stackoverflow.com/questions/3424782/ruby-on-rails-how-do-i-check-if-a-variable-in-an-instance-of-a-class
#   # http://www.wellho.net/mouth/2601_Ruby-is-a-v-instance-of-what-is-the-difference-.html
#
#   def visit page_class, &block
#     # puts 'in visit'
#     on page_class, true, &block
#     puts "1"
#   end
#
#   def on page_class, visit=false, &block
#     page_class = class_from_string(page_class) if page_class.is_a? String
#     puts "2"
#     page = page_class.new @browser, visit
#     puts "after page object"
#     block.call page if block
#     puts "5"
#     page
#   end
#
#   private
#
#  #http://stackoverflow.com/questions/3163641/get-a-class-by-name-in-ruby
#
#   def class_from_string(str)
#     str.split('::').inject(Object) do |mod, class_name|
#       mod.const_get(class_name)
#     end
#   end
#
# end
# require 'watir'
# # Determine the directory containing chromedriver.exe
# chromedriver_directory = File.join(File.absolute_path('../..', File.dirname(__FILE__)),"browsers")
#
# # Add that directory to the path
# ENV['PATH'] = "#{ENV['PATH']}#{File::PATH_SEPARATOR}#{chromedriver_directory}"
#
# # Start the browser as normal
# browser = Watir::Browser.new :chrome
#
#
# browser.goto 'google.com'
# browser.text_field(title: 'Search').set 'Hello World!'
# browser.button(type: 'submit').click
#
# puts browser.title
# # => 'Hello World! - Google Search'
# browser.quit


