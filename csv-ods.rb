#!/usr/bin/env ruby
#
# CSV Folder to OOXML Workbook
# Written by Enrique Santos (me@enriquesantos.net)
#

require 'rubygems'
require 'bundler/setup'
require 'axlsx'
require 'csv'

p = Axlsx::Package.new
p.use_shared_strings = true

dir = ARGV[0]
out_file = ARGV[1]

  Dir.glob(dir + '/*.csv') do |csvf|
    table_name = csvf.split(/\/|[.]/)[-2]
    puts table_name
    p.workbook do |wb|
      wb.add_worksheet(:name => table_name) do |ws|
        CSV.foreach(csvf) do |row|
	  ws.add_row row
	end
      end
    end
  end

p.serialize out_file
