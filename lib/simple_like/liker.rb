module SimpleLike
  module Liker
    
    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods    
      def acts_as_liker
        include SimpleLike::Liker::InstanceMethods
      end
    end
    
    module InstanceMethods
      def like!(instance)
        if is_likeable?(instance)
          instance.likes.create(author: self) if !like?(instance)
        else
          # Return exception
        end
      end

      def like?(instance)
        instance.likes.where(author_id: self, author_type: self.class.name).present?
      end

      def destroy_like!(instance)
        likes = instance.likes.where(author_id: self, author_type: self.class.name)
        likes.destroy_all if likes.present?
      end

      def is_likeable?(instance)
        begin
          instance.try(:is_likeable?)
        rescue
          false
        end
      end
    end
  end
end