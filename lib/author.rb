require_relative 'post.rb'
require 'pry'

class Author

    @@all = []

    attr_accessor :name, :author, :title

    def initialize(name)
        @name = name
        @@all << self
    end

    def posts
        Post.all.select {|post| post.author == self}
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        post.title = title
        @title = title
        post.author = self
    end

    def self.all
        @@all
    end

    def author_posts
        self.posts.select {|author| author.posts}
    end

    def self.post_count
        array = self.all.map {|author| author.posts}
        array.flatten.count
    end

end


#binding.pry