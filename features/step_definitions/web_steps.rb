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
    page.should have_content('Login Successful')
  else
    assert page.has_content?('Login Successful')
  end
end

When /^(?:|I )press "([^"]*)"$/ do |button|
  click_button(button)
end
