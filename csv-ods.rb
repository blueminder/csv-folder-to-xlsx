#!/usr/bin/env ruby
#
# CSV Folder to ODS Workbook
# Written by Enrique Santos (me@enriquesantos.net)
#

require 'odf/spreadsheet'

dir = ARGV[0]
output = ARGV[1]

ODF::Spreadsheet.file(output) do
  Dir.glob(dir + '/*.csv') do |csvf|
    puts csvf
    table csvf do
      
    end
  end  
end

