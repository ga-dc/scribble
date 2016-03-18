# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.destroy_all
Comment.destroy_all

my_post1 = Post.create(title: "Freedom and responsibility", body: "Freedom is the ability to set your schedule, to decide on the work you do, to make decisions.

Responsibility is being held accountable for your actions. It might involve figuring out how to get paid for your work, owning your mistakes or having others count on you.")
my_post2 = Post.create(title: "Listening to smart vs. I'm with stupid", body: "In what areas have you found that you benefit from listening to someone who's really smart about the decision you need to make?

Not a self-appointed expert, but someone with experience, patience and maturity, someone who's been educated in the field, practiced in it, someone who understands the history and the mechanics of what's on offer...")
my_post3 = Post.create(title: "Will this be on the test?", body: "There, in six words, is one of the worst questions any educator can hear.

It lays bare, in a simple question, the motivations, the structures and the flaws of the traditional educational paradigm. The test is a stick, the grade (and the degree) are the carrot, and compliance is the process.

")
my_post4 = Post.create(title: "While waiting for perfect", body: "You've permitted magical to walk on by. Not to mention good enough, amazing and wonderful.

Waiting for the thing that cannot be improved (and cannot be criticized) keeps us from beginning.

Merely begin.")
