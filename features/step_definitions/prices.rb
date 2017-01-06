And(/^Market Prices page is opened$/) do
  on_page(MenuBar).menu_infeasibility_element.when_present(10)
  on(MenuBar).menu_pricestoggle
  on(MenuBar).menu_prices
  on(PricesPage).prices_final_element.when_present(20)
  on(PricesPage).check_prices_final
end

=begin
Given(/^User is on prices page$/) do

  # on(PricesPage).prices_mtypereserve.when_present(120).click
  # on(PricesPage).prices_gridpoints.when_present(120).click
  # on(PricesPage).prices_selectgridpoint.when_present(120).click
  # on(PricesPage).prices_deselectgridpoint.when_present(120).click
  # on(PricesPage).prices_mtypereserve.when_present(120).fire_event :click
  # on(PricesPage).reset.when_present(120).fire_event :click
  #   on(PricesPage).refreshresult.click
end
=end

=begin
Given(/^Verify default search selection$/) do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  data = table.hashes
  GP = []
  SC = []
  MT = []

  data.each do |row|
    row.each do |key, value|
      if key.eql? "Grid_Points"
        GP << value
      elsif key.eql? "Schedule"
        SC << value
      elsif key.eql? "Market_Type"
        MT << value
      end
    end
  end

  puts GP
  puts SC
  puts MT
end
=end


When(/^user click on refresh results button$/) do
on(ComObj).refreshresult
end

# Then(/^user see default search results$/) do
#
# end






