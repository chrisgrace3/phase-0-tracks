require 'sqlite3'

db = SQLite3::Database.new('calorie-tracker.db')
# db = results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS calories(
    id INTEGER PRIMARY KEY,
    day VARCHAR(255),
    food VARCHAR(255),
    calories INT
  )
  SQL

db.execute(create_table_cmd)

puts "What is today's date?"
date = gets.chomp
puts "What did you eat?"
food = gets.chomp
puts "How many calories were consumed?"
calories = gets.chomp.to_i
db.execute("INSERT INTO calories (day, food, calories) VALUES ('#{date}', '#{food}', #{calories})")
