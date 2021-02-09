class Post
    attr_accessor :name, :new, :all, :title, :author, :author_name
    
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
        self.author.name if author 
    end
end