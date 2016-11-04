class CommonObjectOnPage < GenericBasePage
  puts "in com"
  element(:refreshresult) {|b1| b1.button(xpath: OR['refreshresult'])}





end