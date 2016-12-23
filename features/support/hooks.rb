Before do
  # Specify the driver path . This solution not working
  # chromedriver_path = File.join(File.absolute_path('../..', File.dirname(__FILE__)),"browsers","chromedriver.exe")
  # Selenium::WebDriver::Chrome.driver_path = chromedriver_path

  # Determine the directory containing browsers exe
 driver_directory = File.join(File.absolute_path('../..', File.dirname(__FILE__)),"browsers")

  # Add that directory to the path
  ENV['PATH'] = "#{ENV['PATH']}#{File::PATH_SEPARATOR}#{driver_directory}"
  # puts ENV['PATH']

  # driverpath = File.join(File.absolute_path('../..', File.dirname(__FILE__)),"browsers","chromedriver.exe")
  # driverpath = File.join(File.absolute_path('../..', File.dirname(__FILE__)),"browsers","geckodriver.exe")
  # puts driverpath
  # Add that directory to the path
  # ENV['PATH'] = "#{ENV['PATH']}#{File::PATH_SEPARATOR}#{chromedriver_directory}"
   # Selenium::WebDriver::Chrome.path =driverpath
  # Selenium::WebDriver::Chrome::Binary.path  = driverpath
  #  @browser = Watir::Browser.new :Firefox           #Watir

  # @browser = Watir::Browser.new :chrome # Default is firefox
  @browser = Watir::Browser.new   # Default is firefox
  # # @browser = Watir::Browser.new :firefox # Default is firefox

  # caps = Selenium::WebDriver::Remote::Capabilities.firefox(marionette: false)
  # Selenium::WebDriver::Firefox::Binary.path = driverpath
  # Watir::Browser.new desired_capabilities: caps
end
  # puts scenario.feature.name
  # puts scenario.scenario_outline.feature.name
  # puts scenario.name
  # puts scenario.scenario_outline.name
  # case scenario
  #   when 'Login'
#   puts ENV['BROWSER']
#   ENV['BROWSER'] = "chrome" if ENV['BROWSER'].nil?
#   if(ENV['BROWSER']=='firefox')
#     # driverpath = File.join(File.absolute_path('../..', File.dirname(__FILE__)),"browsers","geckodriver.exe")
#     # Selenium::WebDriver::Firefox.path=driverpath
#     # Selenium::WebDriver::Firefox.path= 'C:\Users\Kuldeep.Kumar\AppData\Local\Mozilla Firefox\firefox.exe'
#     # profile = Selenium::WebDriver::Firefox::Profile.from_name 'seleniumprofile'
#     # @browser = Watir::Browser.new :firefox, :profile => profile
#     Selenium::WebDriver::Firefox.path = 'C:\Users\Kuldeep.Kumar\AppData\Local\Mozilla Firefox\firefox.exe'
#     profile = Selenium::WebDriver::Firefox::Profile.new
#     profile['network.proxy.type']= 0
#     # profile['network.proxy.http'] = 'localhost'
#     # profile['network.proxy.http_port'] = 9090
#
#     # driver = Selenium::WebDriver.for :firefox, :profile => profile
#     # Selenium::WebDriver::Firefox.path= driverpath
#     # driver = Selenium::WebDriver.for :firefox, marionette: true
#     @browser = Watir::Browser.new :firefox, :profile => profile              #Watir
#     # @browser = Selenium::WebDriver.for :marionette, :profile => profile     #Webdriver
#   elsif(ENV['BROWSER']=='chrome')
#     driverpath = File.join(File.absolute_path('../..', File.dirname(__FILE__)),"browsers","chromedriver.exe")
#     Selenium::WebDriver::Chrome.driver_path= driverpath
#     @browser = Watir::Browser.new ENV['BROWSER'].to_sym              #Watir
#     # @browser = Selenium::WebDriver.for ENV['BROWSER'].to_sym       #Webdriver
#   elsif(ENV['BROWSER']=='ie')
#     driverpath = File.join(File.absolute_path('../..', File.dirname(__FILE__)),"browsers","IEDriverServer.exe")
#     Selenium::WebDriver::IE.driver_path= driverpath
#     @browser = Watir::Browser.new ENV['BROWSER'].to_sym              #Watir
#     # @browser = Selenium::WebDriver.for ENV['BROWSER'].to_sym       #Webdriver
#     # Selenium::WebDriver::Wait.new(:timeout => 1000) # seconds
#   end
#   @browser.window.maximize
#   #   else
#   #     puts "nothing"
#   # end
#
# end



# After('@Logout') do |scenario|
#   if scenario.failed?
#     Dir::mkdir('screenshots') if not File.directory?('screenshots')
#     screenshot = "./screenshots/FAILED_#{scenario.name.gsub(' ','_').gsub(/[^0-9A-Za-z_]/, '')}.png"
#     @browser.driver.save_screenshot(screenshot)
#     embed screenshot, 'image/png'
#   end
#   @browser.cookies.clear
#   @browser.quit
# end





