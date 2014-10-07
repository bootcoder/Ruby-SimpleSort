##########################
# RUBY      SIMPLE SORT  #
##########################
### Hunter T. Chapman  ###
## bootcoder@gmail.com  ##
##########################

# require 'awesome_print'

##########################
# 			PSEUDO CODE
##########################
=begin

***INPUT***
70.920 -38.797 14.354 99.323 90.374 7.581

***OUTPUT***
-38.797 7.581 14.354 70.920 90.374 99.323

*** CODE ***
write a program which accepts ARGV[0] with a file name
write a function which parses through ARGV[0]
for each line in ARGV[0] send the line to a function to sort the digits given

write a function sort_nums which takes a single arr as input
convert strings to floats
sort from lowest to highest including negative nums
print result

=end

##########################
# 			INITIAL CODE
##########################

def sort_nums_app
	puts "ERROR: Please give a valid filename as an argument." if ARGV[0] == nil
	File.readlines(ARGV[0]).each do |line|
		line.gsub!("\n", "") if line.include? "\n"
		sort_nums(line.split(" ")) unless line.split[0] == nil
	end
end


def sort_nums(num_arr)
	result = ""
	f_nums = num_arr.sort_by(&:to_f)
	f_nums.map { |num| result += "#{num} "}
	puts result.strip
end

##########################
# 		ACTIONABLE CODE
##########################

sort_nums_app

##########################
# 			TEST CODE
##########################

# p sort_nums(["70.920", "-38.797", "14.354", "99.323", "90.374", "7.581"]) == "-38.797 7.581 14.354 70.920 90.374 99.323"


# "-100.462 -90.674 -65.435 -49.999 -36.334 -25.071 7.164 13.369 18.621 49.163 49.846 52.658 84.210 97.483"
# "-100.462 -90.674 "

# -36.334 -65.435 52.658 97.483 18.621 -25.071 13.369 -100.462 -49.999 7.164 84.210 49.846 -90.674 49.163
