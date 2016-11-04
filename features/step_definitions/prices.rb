Given(/^User is on prices page$/) do
  on(MenuBar).menu_pricestoggle.click
  on(MenuBar).menu_prices.click
  on(PricesPage).prices_mtypereserve.when_present(120).click
  on(PricesPage).prices_gridpoints.when_present(120).click
  on(PricesPage).prices_selectgridpoint.when_present(120).click
  on(PricesPage).prices_deselectgridpoint.when_present(120).click
  # on(PricesPage).prices_mtypereserve.when_present(120).fire_event :click
  # on(PricesPage).reset.when_present(120).fire_event :click
    on(PricesPage).refreshresult.click
end


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

When(/^user click on refresh results button$/) do

end

Then(/^user see default search results$/) do

end





