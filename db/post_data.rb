def get_post_data
  post_data = {
    "dugsbigday" => {
                title: "Dug's Big Day!",
                body:  "I went to the park and chased the bird with Alpha!",
                author: "Dug",
                },
    "foundabird" => {
                title: "I found the bird!",
                body:  "I can't believe it!  I found a bird!",
                author: "Dug",
                },
    "readabook" => {
                title: "I read a book.",
                body: "I sat down in my favorite spot to read Robert Frost.",
                author: "Dug",
                }
    }
  return post_data
end
