require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("https://flatironschool.com/"))

courses = doc.css(".text-4GLMvr.title-oE5vT4")

courses.each do |course|
  puts course.text.strip
end