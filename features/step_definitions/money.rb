# encoding: utf-8
Нехай /^"(.*?)" в мене було "(.*?)" гривень$/ do |date, sum|
  Money.create date: Time.parse("#{date}.2012 12:00"), sum: sum
end

Коли /^я відкрию головну сторінку$/ do
  visit dashboard_path
end

То /^(?:|маю побчити, що )з "(.*?)" було витрачено "(.*?)" гривень$/ do |period, sum|
  page.should have_content("#{period} #{sum}")
end