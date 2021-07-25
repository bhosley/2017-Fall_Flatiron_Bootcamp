class Authority < ActiveRecord::Base
    has_many :badges
    has_many :users, through: :badges
  
    def slug
      username.downcase.gsub(" ","-")
    end
  
    def self.find_by_slug(slug)
      User.all.find{|username| username.slug==slug}
    end
  
  end