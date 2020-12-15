require_relative 'author.rb'
require 'pry'

class Post

    attr_accessor :author, :post, :title

    @@all = [ ]

    def initialize(title)
        @title = title
        save
    end

    def title
        @title
    end

    def save
        @@all << self
    end

    def author
        @author
    end

    def self.all
        @@all
    end

    def author_name
        if !self.author
            return nil
        else
        self.author.name
        end
    end
end