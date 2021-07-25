class Badge < ActiveRecord::Base
    belongs_to :user
    belongs_to :authority

    def slug
      username.downcase.gsub(" ","-")
    end
  
    def self.find_by_slug(slug)
      User.all.find{|username| username.slug==slug}
    end

    def display
    end
          
  end