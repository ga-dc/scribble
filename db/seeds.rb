# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Comment.destroy_all
Post.destroy_all


posts = Post.create([
  {user_id: 1,
    post_text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquet dignissim vehicula. Etiam quis aliquet neque, sed posuere enim. Curabitur fringilla condimentum posuere. Proin feugiat consectetur viverra. In accumsan, risus in tempor auctor, felis libero molestie elit, vel vehicula justo nibh sed lectus. Donec nec commodo est. Nullam rhoncus tortor enim, sed sodales urna pretium in. Donec at dui bibendum, vehicula tortor ac, bibendum nulla.",
    title: "SDM Dance Party"
  },

  {user_id: 2,
    post_text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquet dignissim vehicula. Etiam quis aliquet neque, sed posuere enim. Curabitur fringilla condimentum posuere. Proin feugiat consectetur viverra. In accumsan, risus in tempor auctor, felis libero molestie elit, vel vehicula justo nibh sed lectus. Donec nec commodo est. Nullam rhoncus tortor enim, sed sodales urna pretium in. Donec at dui bibendum, vehicula tortor ac, bibendum nulla.",
    title: "NO MORE INCIDENTS OR ELSE"
  },

  {user_id: 3,
    post_text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquet dignissim vehicula. Etiam quis aliquet neque, sed posuere enim. Curabitur fringilla condimentum posuere. Proin feugiat consectetur viverra. In accumsan, risus in tempor auctor, felis libero molestie elit, vel vehicula justo nibh sed lectus. Donec nec commodo est. Nullam rhoncus tortor enim, sed sodales urna pretium in. Donec at dui bibendum, vehicula tortor ac, bibendum nulla.",
    title: "u can't c me now"
  }

])

posts.each do |post|
  post.comments.create([
    {user_id: 4,
      comment_text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquet dignissim vehicula. Etiam quis aliquet neque, sed posuere enim. Curabitur fringilla condimentum posuere. Proin feugiat consectetur viverra. In accumsan, risus in tempor auctor, felis libero molestie elit, vel vehicula justo nibh sed lectus. Donec nec commodo est. Nullam rhoncus tortor enim, sed sodales urna pretium in. Donec at dui bibendum, vehicula tortor ac, bibendum nulla.",
    },

    {user_id: 5,
      comment_text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquet dignissim vehicula. Etiam quis aliquet neque, sed posuere enim. Curabitur fringilla condimentum posuere. Proin feugiat consectetur viverra. In accumsan, risus in tempor auctor, felis libero molestie elit, vel vehicula justo nibh sed lectus. Donec nec commodo est. Nullam rhoncus tortor enim, sed sodales urna pretium in. Donec at dui bibendum, vehicula tortor ac, bibendum nulla.",
    },

    {user_id: 6,
      comment_text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquet dignissim vehicula. Etiam quis aliquet neque, sed posuere enim. Curabitur fringilla condimentum posuere. Proin feugiat consectetur viverra. In accumsan, risus in tempor auctor, felis libero molestie elit, vel vehicula justo nibh sed lectus. Donec nec commodo est. Nullam rhoncus tortor enim, sed sodales urna pretium in. Donec at dui bibendum, vehicula tortor ac, bibendum nulla.",
    }
  ])
  end
