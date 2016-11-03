# When(/^I open "([^"]*)" website$/) do |url|
#   # visit url
#   visit AutomationHomePage
# end

# When(/^I open automationpractice website$/) do
#   visit AutomationHomePage
# end


When(/^User open WITS website$/) do
  puts "visit dash"
  visit DashBoardPage

end

And(/^User login with username "([^"]*)" and password "([^"]*)"$/) do |username, password|

  puts "login with usr pass"
  # on(DashBoardPage).dashboard_autoplay.click
  puts "bfore auto lcick"
  el = on(DashBoardPage).dashboard_autoplay
  el.wait_until_present(120)
  el.click                #when_present(60).click
  puts "after auto lcick"
  on(DashBoardPage).dashboard_login.click
  on(LoginPage).login(username,password)

end

Then(/^User should be logged-in successfully$/) do

  # puts on(MenuBar).menu_slider.exists?
  # puts on(MenuBar).menu_slider.present?
  # puts on(MenuBar).menu_slider.visible?
  # puts on(MenuBar).menu_collapsed.exists?
  # puts on(MenuBar).menu_collapsed.present?
  # puts on(MenuBar).menu_collapsed.visible?
  on(MenuBar).menu_slider.fire_event :click
  # puts on(MenuBar).menu_slider.exists?
  # puts on(MenuBar).menu_slider.present?
  # puts on(MenuBar).menu_slider.visible?
  # puts on(MenuBar).menu_collapsed.exists?
  # puts on(MenuBar).menu_collapsed.present?
  # puts on(MenuBar).menu_collapsed.visible?
  # puts on(MenuBar).menu_logout.exists?
  # puts on(MenuBar).menu_logout.present?
  expect(on(MenuBar).menu_logout.visible?).to be true
         # on(MenuBar).menu_slider.fire_event :click
  # if (on(MenuBar).menu_collapsed.exists?)
  #     on(MenuBar).menu_slider.click
  # end
end
=begin
And(/^I login using data from yml$/) do
  on(DashBoardPage).sign_in.when_present(10).click
  on(LoginPage).login_yml
end
=end



When(/^User clicks on logout link$/) do
  # puts on(MenuBar).menu_slider.exists?
  # puts on(MenuBar).menu_slider.present?
  # puts on(MenuBar).menu_slider.visible?
  # puts on(MenuBar).menu_collapsed.exists?
  # puts on(MenuBar).menu_collapsed.present?
  # puts on(MenuBar).menu_collapsed.visible?
  # on(MenuBar).menu_slider.fire_event :click
  if (on(MenuBar).menu_collapsed.exists?)
      on(MenuBar).menu_slider.click
  end
  expect(on(MenuBar).menu_logout.visible?).to be true
         on(MenuBar).menu_logout.click
end

Then(/^User should be logged-out successfully$/) do
  expect(on(DashBoardPage).dashboard_login_button.visible?).to be true
end



# Then(/^I contact customer service with order reference "([^"]*)" and message "([^"]*)"$/) do |order_ref, message|
#   contact_customer_service(order_ref,message)
# end