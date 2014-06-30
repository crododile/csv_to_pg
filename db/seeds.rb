# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'CSV'

  def feach
    CSV.foreach('/Users/coburnberry/Desktop/mkttst/db/farmercsv.csv', headers: true) do |row|
      p row.to_hash
    end
  end
  
  
  feach

  
