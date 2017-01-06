# include PageObject::PageFactory
# When(/^User open WITS website$/) do
#   visit DashBoardPage
# end

When(/^User login with username "([^"]*)" and password "([^"]*)"$/) do |username, password|
on_page(DashBoardPage).dashboard_autoplay
# sleep (20)
on_page(DashBoardPage).dashboard_login
  # on_page(LoginPage).get_search_filter_elements.each{ |e| puts e.class }
  # on_page(LoginPage).get_search_filter_elements.each{ |e| puts e.name }
  # on_page(LoginPage).get_search_filter_elements.each{ |e| puts e.inspect }
  # on_page(LoginPage).get_search_filter_elements.each{ |e| puts e.to_s }
  # on_page(LoginPage).inputele_elements.each{ |e| puts e.name }
  on_page(LoginPage).login(username,password)
end

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
# =begin
# And(/^I login using data from yml$/) do
#   on(DashBoardPage).sign_in.when_present(10).click
#   on(LoginPage).login_yml
# end
# =end

Given (/^Verify user is logged-in$/) do
  on_page(MenuBar).menu_infeasibility_element.when_present(10)
  if on(MenuBar).menu_logout_element.exists?
  elsif on(MenuBar).menu_logout_element.exists? == false
    on(MenuBar).menu_slider_element.click
    on(MenuBar).menu_logout_element.when_present(10)
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
