class Author
    attr_accessor :name, :posts, :add_post, :add_post_by_title, :post_count

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def posts
        # @songs
        Post.all.select {|post| post.author == self}
    end
    def add_post(post)
        post.author = self
    end
    def add_post_by_title(name)
        post = Post.new(name)
        post.author = self
    end
    def self.post_count
        Post.all.count
    end
end