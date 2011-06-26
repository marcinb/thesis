module Administer
  class Model
    class << self 
      def all
        ActiveRecord::Base.subclasses
      end
    end
  end
end
  