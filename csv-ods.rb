#!/usr/bin/env ruby
#
# CSV Folder to ODS Spreadsheet
#

dir = ARGV[0]
output = ARGV[1]

Dir.glob(dir + '/*.csv') do |csv|
  puts csv
end
