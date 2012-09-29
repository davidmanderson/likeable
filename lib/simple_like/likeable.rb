module SimpleLike
  module Likeable
    
    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods    
      def acts_as_likeable
        has_many :likes, { as: :likeable, dependent: :destroy }
        include SimpleLike::Likeable::InstanceMethods
      end
    end

    module InstanceMethods
      def is_likeable?
        true
      end
    end
  end
end