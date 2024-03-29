module Concerns
##########################################
  module ClassMethods

    def create(name)
      self.new(name).save
    end

    def destroy_all
      self.all.clear
    end

  end
##########################################
  module InstanceMethods

    def save
      self.class.all << self
    end

  end
##########################################
  module Findable

    def find_by_name(name)
      self.all.detect{|a| a.name == name}
    end

    def find_or_create_by_name(name)
      self.find_by_name(name) ? self.find_by_name(name) : self.create(name)
    end

  end
##########################################
end
