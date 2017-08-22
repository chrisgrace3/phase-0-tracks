require 'sqlite3'

db = SQLite3::Database.new(calorie-tracker.db)
db = results_as_hash = true

create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS calories(
    id INTEGER PRIMARY KEY,
    day VARCHAR(255),
    food VARCHAR(255),
    calories INT
  )
  SQL

  
