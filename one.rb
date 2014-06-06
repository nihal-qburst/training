require 'mysql2'
begin
 	db = Mysql2::Client.new(:host => "localhost", :username => "root", :password => "qburst")
	#db.query("CREATE DATABASE test")
	db.select_db('qb_sitemap_task1')
	#db.query("CREATE TABLE users (name varchar(20),age integer)")
	#db.query("INSERT INTO users VALUES('nicku',22)")
	results = db.query("SELECT * FROM sitemap")
	
	results.each do |row|
    	puts row
    end


rescue Mysql2::Error => e
  puts "Error code: #{e.errno}"
  puts "Error message: #{e.error}"
  puts "Error SQLSTATE: #{e.sqlstate}" if e.respond_to?("sqlstate")
ensure
  db.close if db
end