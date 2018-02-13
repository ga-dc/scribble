def get_comment_data
    comment_data = {
        "post1" => [{
                cContent:"post 1 comment1"
            }, 
            {
                cContent:"post 1 comment2"
            },
            {
                cContent:"post 1 comment3"
            }],
        "post2" => [{
                cContent:"post 2 comment1"
            },
            {
                cContent:"post 2 comment2"
            }],            
        "post3" => [{
                cContent:"post 3 comment1"
            },
            {
                cContent:"post 3 comment2"
            }],            
        "post4" => [{
                cContent:"post 4 comment1"
            },
            {
                cContent:"post 4 comment2"
            }]
    }
    return  comment_data
end
