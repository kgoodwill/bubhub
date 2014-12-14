require 'uri'
require 'cgi'
#require File.expand_path(File.join(File.dirname(__FILE__), "..","support","paths"))
#require File.expand_path(File.join(File.dirname(__FILE__), "..","support","selectors"))

module WithinHelpers
  def with_scope(locator)
    locator ? within(*selector_for(locator)) { yield } : yield
  end
end
World(WithinHelpers)

Given /^I am logged into the admin account$/ do
  visit '/accounts/login'
  fill_in 'user_login', :with => 'admin'
  fill_in 'user_password', :with => 'catscats'
  click_button 'Login'
  if page.respond_to? :should
    expect(page).to have_content 'Login Successful' 
  else
    assert page.has_content?('Login Successful')
  end
end

Given /^(?:|I )am on (.+)$/ do |page_name|
  visit (page_name)
end

When /^(?:|I )go to (.+)$/ do |page_name|
  visit (page_name)
end

When /^(?:|I )press "([^"]*)"$/ do |button|
  click_button(button)
end


When /^(?:|I )follow "([^"]*)"$/ do |link|
  click_link(link)
end


When /^(?:|I )select "([^"]*)" from "([^"]*)"$/ do |value, field|
  select(value, :from => field)
end

When /^(?:|I )check "([^"]*)"$/ do |field|
  check(field)
end

When /^(?:|I )uncheck "([^"]*)"$/ do |field|
  uncheck(field)
end

When /^(?:|I )choose "([^"]*)"$/ do |field|
  choose(field)
end


Then /^(?:|I )should see "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_content(text)
  else
    assert page.has_content?(text)
  end
end


Then /^the "([^"]*)" field(?: within (.*))? should contain "([^"]*)"$/ do |field, parent, value|
  with_scope(parent) do
    field = find_field(field)
    field_value = (field.tag_name == 'textarea') ? field.text : field.value
    if field_value.respond_to? :should
      field_value.should =~ /#{value}/
    else
      assert_match(/#{value}/, field_value)
    end
  end
end


Then /^(?:|I )should be on (.+)$/ do |page_name|
  current_path = URI.parse(current_url).path
  if current_path.respond_to? :should
    current_path.should == path_to(page_name)
  else
    assert_equal path_to(page_name), current_path
  end
end


Then /^show me the page$/ do
  save_and_open_page
end
