g migration create_posts title:string article:string author_id:integer comments_enabled:boolean date_published:datetime banner_url:string views:integer enabled:boolean
rails g migration create_comments comment:string user_id:integer enabled:boolean date:datetime post:references
