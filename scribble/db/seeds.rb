# This fiTRUNCATE TABLE comments CASCADE;
TRUNCATE TABLE comments CASCADE;

ALTER SEQUENCE posts_id_seq RESTART WITH 1;
ALTER SEQUENCE comments_id_seq RESTART WITH 1;


INSERT INTO  (email) VALUES ('mrchensorganiccontrolroom@gmail.com' );

# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
