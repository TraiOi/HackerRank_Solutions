#!/bin/ruby

# Given a time in AM/PM format, convert it to military (24-hour) time.
# Note: Midnight is 12:00:00AM on a 12-hour clock and 00:00:00 on a 24-hour clock. Noon is 12:00:00PM on a 12-hour clock and 12:00:00 on a 24-hour clock.
# Input Format
# A time in 12-hour clock format (i.e.: hh:mm:ssAM or hh:mm:ssPM), where 01≤hh≤12.
# Output Format
# Convert and print the given time in 24-hour format, where 00≤hh≤23.
# Sample Input
# | 07:05:45PM
# Sample Output
# | 19:05:45
# Explanation
# 7 PM is after noon, so you need to add 12 hours to it during conversion. 12 + 7 = 19. Minutes and seconds do not change in 12-24 hour time conversions, so the answer is 19:05:45.

time = gets.strip

/((\d{2}):(\d{2}:\d{2}))(\D{2})/ =~ time
if Regexp.last_match(4) == "PM"
	if Regexp.last_match(2) == "12"
		print Regexp.last_match(1)
	else
		print "#{Regexp.last_match(2).to_i+12}:#{Regexp.last_match(3)}"
	end
else
	if Regexp.last_match(2) == "12"
		print "#{'00'}:#{Regexp.last_match(3)}"
	else
		print Regexp.last_match(1)
	end
end
