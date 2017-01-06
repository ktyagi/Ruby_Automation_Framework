  class PricesPage
    include PageObject
   checkbox(:prices_final , xpath: OR['prices_final'] )
  element(:prices_gridpoints) {|b1| b1.text_field(xpath: OR['prices_gridpoints'])}
  element(:prices_selectgridpoint) {|b1| b1.link(xpath: OR['prices_selectgridpoint'])}
  element(:prices_deselectgridpoint) {|b1| b1.link(xpath: OR['prices_deselectgridpoint'])}
  element(:prices_mtypereserve) {|b1| b1.element(xpath: OR['prices_mtypereserve'])}
  element(:prices_date) {|b1| b1.link(xpath: OR['prices_date'])}
  element(:prices_fromdate) {|b1| b1.text_field(xpath: OR['prices_fromdate'])}
  element(:prices_fromtp) {|b1| b1.link(xpath: OR['prices_fromtp'])}
  element(:prices_todate) {|b1| b1.text_field(xpath: OR['prices_todate'])}
  element(:prices_totp) {|b1| b1.link(xpath: OR['prices_totp'])}





  element(:reset) {|b1| b1.link(xpath: OR['reset_xpath'])}
  # element(:refreshresult) {|b1| b1.button(xpath: OR['refreshresult_xpath'])}

  end

