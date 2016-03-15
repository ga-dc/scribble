# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Post.create(title: "seedfile1" ,body:"I wrote some stuff")
Post.create(title: "seedfile2" ,body:"I wrote some stuff")
Post.create(title: "seedfile3" ,body:"I wrote some stuff")

# unless Rails.env.production?
#   connection = ActiveRecord::Base.connection
#   connection.tables.each do |table|
#     connection.execute("TRUNCATE #{table}") unless table == "schema_migrations"
#   end
#
#   sql = File.read('db/import.sql')
#   statements = sql.split(/;$/)
#   statements.pop
#
#   ActiveRecord::Base.transaction do
#     statements.each do |statement|
#       connection.execute(statement)
#     end
#   end
# end
