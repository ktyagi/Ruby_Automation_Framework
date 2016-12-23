 World(PageObject::PageFactory)

class DashBoardPage
  include PageObject
  text_field(:username, :id => 'user')
   page_url('http://uat.electricityinfo.co.nz/')
  # navigate_to
#
#   element(:dashboard_autoplay) {|b1| b1.element(css: OR['dashboard_autoplay_css'])}
#   # element(:dashboard_autoplay) {|b1| b1.find_element(css: OR['dashboard_autoplay_css'])}
#   element(:dashboard_login) {|b1| b1.link(xpath: OR['dashboard_login'])}
#   # element(:dashboard_login) {|b1| b1.find_element(xpath: OR['dashboard_login'])}
#   element(:dashboard_signup) {|b1| b1.link(xpath: OR['dashboard_signup'])}
# =begin
#   element(:contact_us) {|b| b.link(text: "Contact us")}
#   element(:sign_out) {|b| b.link(text: "Sign out")}
#
#   class HeaderPage < GenericBasePage
#     element(:menu_women) { |b| b.link(title: 'Women')}
#     element(:menu_dresses) {|b|b.link(title: 'Dresses')}
#     element(:menu_tshirts) {|b|b.link(title: 'T-shirts')}
#
#     class DressesPage < GenericBasePage
#       element(:summer_dresses) { |b| b.link(title: 'Summer Dresses')}
#     end
#
#   end
# =end
end

