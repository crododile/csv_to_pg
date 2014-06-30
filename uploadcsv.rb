require 'CSV'
require 'active_record'
def create_model_from_csv filename, model_name
  p filename
  c = CSV.open(filename)
  columns = c.readline
  p columns
  command = "rails generate model " << model_name.to_s.capitalize
  
  columns.each do |header|
    command << " " << header.to_s.downcase << ":string"
  end
  
  exec command
  exec "rake db:migrate"
end

def copy_table_from_csv filename, tablename 
  columns = CSV.open(filename).readline
  cols = "("
  columns.each do |col|
    cols << "#{col.downcase},"
  end
  cols.chop!
  cols << ")"
  command = "COPY #{tablename} #{cols} FROM '#{filename}' DELIMITERS ',' CSV HEADER;"

  connection = ActiveRecord::Base.establish_connection( {
    adapter: 'postgresql',
    database: 'yo',
    pool: 5,
    timeout: 5000})
  # rc = ActiveRecord::Base.connection_pool.checkout.raw_connection
 #  rc.exec("COPY #{tablename} FROM STDIN WITH CSV")
 #
 #  file = File.open(filename, 'r')
 #  file.readline
 #  # while !file.eof?
 #  #   # Add row to copy data
 #    rc.put_copy_data(file.read)
 #  # end
 #
 #  # We are done adding copy data
 #  rc.put_copy_end
 #
 #  # Display any error messages
 #  while res = rc.get_result
 #    if e_message = res.error_message
 #      p e_message
 #    end
 #  end
 #
  #
  # connection = ActiveRecord::Base.establish_connection( {
  #   adapter: 'postgresql',
  #   database: 'yo',
  #   pool: 5,
  #   timeout: 5000})

  connection.connection.execute(command)
end


fname = '/Users/coburnberry/Desktop/mkttst/db/farmercsv.csv'
create_model_from_csv fname, 'snake'
copy_table_from_csv fname, 'snakes'
