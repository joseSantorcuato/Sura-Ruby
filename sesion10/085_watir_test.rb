require 'watir'

driver  = Selenium::WebDriver.for :internet_explorer
browser = Watir::Browser.new(driver)

browser.driver.manage.timeouts.page_load = 10
browser.window.resize_to(1000, 600)
browser.window.move_to(0, 0)

browser.goto "http://awful-valentine.com/"

browser.text_field(:id, "searchinput").clear
browser.text_field(:id, "searchinput").set("Cheese")
browser.button(:id, "searchsubmit").click

=begin
<input type="button" id="one" name="clickme" value="Click Me">

browser.button(:id, "one").click
browser.button(:name, "clickme").click
browser.button(:value, "Click Me").click

Check Me: <input type="checkbox" id="one" name="checkme">
browser.checkbox(:id, "one").set
browser.checkbox(:id, "one").clear

<a href="http://pragmaticprogrammer.com/titles/ruby/" id="one" name="book">Pickaxe</a>
browser.link(:id, "one").click

<input type="radio" name="clickme" id="one">
browser.radio(:id, "one").clear
browser.radio(:name, "clickme").set

<select id="one" name="selectme">
  <option></option>
  <option>Web Testing</option>
  <option>in Ruby</option>
  <option>is fun</option>
</select>

browser.select_list(:id, "one").set("is fun")
browser.select_list(:id, "one").clearSelection

browser.select_list(:id, 'one').set('Web Testing')

browser.text_field(:id, "one").clear
ie.text_field(:id, "one").set("Watir World")

<form>
  <input type=<span class="code-quote">"submit" id="one" value="Submit" /></span>
</form>

ie.button(:id, "one").click



=end
