# include PageObject::PageFactory
# When(/^User open WITS website$/) do
#   visit DashBoardPage
# end

# When(/^User login with username "([^"]*)" and password "([^"]*)"$/) do |username, password|
  When(/^User login with username and password$/) do

  on_page(DashBoardPage).dashboard_autoplay_element.when_visible(20).click
# sleep (20)
  on_page(DashBoardPage).dashboard_login
  on_page(LoginPage).login
    # on_page(DashBoardPage).refresh
end
=begin

Then(/^User should be logged-in successfully$/) do
  # on_page(DashBoardPage).dashboard_sigin_message_element.when_present(20)

  # on_page(MenuBar).menu_infeasibility?
  on_page(MenuBar).menu_infeasibility_element.when_present(10)

  # expect(on(MenuBar).menu_logout.visible?).to be true
         # on(MenuBar).menu_slider.fire_event :click
  # if (on(MenuBar).menu_collapsed.exists?)
  #     on(MenuBar).menu_slider.click
  # end
end
=end
# =begin
# And(/^I login using data from yml$/) do
#   on(DashBoardPage).sign_in.when_present(10).click
#   on(LoginPage).login_yml
# end
# =end

Given (/^User is logged-in$/) do
  on_page(MenuBar).menu_infeasibility_element.when_visible(10)
  # debugger
  if on(MenuBar).menu_logout?
  elsif on(MenuBar).menu_logout? == false
    on(MenuBar).menu_slider_element.click
    on(MenuBar).menu_logout_element.when_visible(20)
  end
end

When(/^User clicks on logout link$/) do
  # puts on(MenuBar).menu_slider.exists?
  # puts on(MenuBar).menu_slider.present?
  # puts on(MenuBar).menu_slider.visible?
  # puts on(MenuBar).menu_collapsed.exists?
  # puts on(MenuBar).menu_collapsed.present?
  # puts on(MenuBar).menu_collapsed.visible?
  # on(MenuBar).menu_slider.fire_event :click
  # if (on(MenuBar).menu_collapsed.exists?)
  #     on(MenuBar).menu_slider.click
  # end
  # expect(on(MenuBar).menu_logout.visible?).to be true
         on(MenuBar).menu_logout
end

Then(/^User should be logged-out successfully$/) do
  on(DashBoardPage).dashboard_login_element.when_present(10)
end

# # Then(/^I contact customer service with order reference "([^"]*)" and message "([^"]*)"$/) do |order_ref, message|
# #   contact_customer_service(order_ref,message)
# # end
