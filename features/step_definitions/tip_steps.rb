require 'lib/bill'

Given /^I have a bill for "([^"]*)" dollars$/ do |cost|
  @bill = Bill.new(cost)
end

Given /^I want to give a "([^"]*)" percent tip$/ do |rate|
  @bill.tip_rate = rate
end

When /^I calculate my tip$/ do
  @bill.calc_tip
end

Then /^I should get "([^"]*)" dollars for the tip cost$/ do |tip|
  @bill.tip.should eq(tip.to_f)
end
