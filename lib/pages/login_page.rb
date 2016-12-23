class LoginPage
  # puts "in log"
  # include DataHelper
  # element(:login_username) {|b1| b1.text_field(id: OR['login_username_id'])}
  # element(:login_password) {|b| b.text_field(id: OR['login_password_id'])}
  # element(:login_login) {|b| b.button(name: OR['login_login_name'])} # element(:login_login) {|b| b.button(value: OR['login_login_value'])}
  #
  # # element(:login_username) {|b1| b1.find_element(id: OR['login_username_id'])}
  # # element(:login_password) {|b| b.find_element(id: OR['login_password_id'])}
  # # element(:login_login) {|b| b.find_element(name: OR['login_login_name'])}
  #
  # def login(username="abc@xyz.com",passwd="Test@123")
  #   login_username.set username
  #   login_password.set passwd
  #   # login_username.send_keys username  # Does not clear field before writing
  #   # login_password.send_keys passwd
  #   login_login.click
  #
  # end
  #
  # def login_yml(options={})
  #   # options = options.with_indifferent_access
  #   # options.to_hash.reverse_merge! data_yml_hash.with_indifferent_access
  #   email.set data_yml_hash['username']
  #   password.set data_yml_hash['password']
  #   signin_button.click
  # end


end
