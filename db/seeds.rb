# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.destroy_all
Comment.destroy_all

posts = Post.create([
  {username: "rscarlet",
    post_text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquet dignissim vehicula. Etiam quis aliquet neque, sed posuere enim. Curabitur fringilla condimentum posuere. Proin feugiat consectetur viverra. In accumsan, risus in tempor auctor, felis libero molestie elit, vel vehicula justo nibh sed lectus. Donec nec commodo est. Nullam rhoncus tortor enim, sed sodales urna pretium in. Donec at dui bibendum, vehicula tortor ac, bibendum nulla.",
    title: "SDM Dance Party"
  },

  {username: "rhakurei",
    post_text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquet dignissim vehicula. Etiam quis aliquet neque, sed posuere enim. Curabitur fringilla condimentum posuere. Proin feugiat consectetur viverra. In accumsan, risus in tempor auctor, felis libero molestie elit, vel vehicula justo nibh sed lectus. Donec nec commodo est. Nullam rhoncus tortor enim, sed sodales urna pretium in. Donec at dui bibendum, vehicula tortor ac, bibendum nulla.",
    title: "NO MORE INCIDENTS OR ELSE"
  },

  {username: "jcena",
    post_text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquet dignissim vehicula. Etiam quis aliquet neque, sed posuere enim. Curabitur fringilla condimentum posuere. Proin feugiat consectetur viverra. In accumsan, risus in tempor auctor, felis libero molestie elit, vel vehicula justo nibh sed lectus. Donec nec commodo est. Nullam rhoncus tortor enim, sed sodales urna pretium in. Donec at dui bibendum, vehicula tortor ac, bibendum nulla.",
    title: "u can't c me now"
  }

])

comments = Comment.create([
  posts.each do |post|
    {username: "sizayoi",
      comment_text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquet dignissim vehicula. Etiam quis aliquet neque, sed posuere enim. Curabitur fringilla condimentum posuere. Proin feugiat consectetur viverra. In accumsan, risus in tempor auctor, felis libero molestie elit, vel vehicula justo nibh sed lectus. Donec nec commodo est. Nullam rhoncus tortor enim, sed sodales urna pretium in. Donec at dui bibendum, vehicula tortor ac, bibendum nulla.",
    },

    {username: "mkirisame",
      comment_text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquet dignissim vehicula. Etiam quis aliquet neque, sed posuere enim. Curabitur fringilla condimentum posuere. Proin feugiat consectetur viverra. In accumsan, risus in tempor auctor, felis libero molestie elit, vel vehicula justo nibh sed lectus. Donec nec commodo est. Nullam rhoncus tortor enim, sed sodales urna pretium in. Donec at dui bibendum, vehicula tortor ac, bibendum nulla.",
    },

    {username: "rastley",
      comment_text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquet dignissim vehicula. Etiam quis aliquet neque, sed posuere enim. Curabitur fringilla condimentum posuere. Proin feugiat consectetur viverra. In accumsan, risus in tempor auctor, felis libero molestie elit, vel vehicula justo nibh sed lectus. Donec nec commodo est. Nullam rhoncus tortor enim, sed sodales urna pretium in. Donec at dui bibendum, vehicula tortor ac, bibendum nulla.",
    }
  ])
