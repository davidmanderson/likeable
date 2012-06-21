module Likeable
  module User
    def self.extended(model_class)
      model_class.instance_eval do
        extend User
      end
    end

    def self.included(model_class)
      model_class.extend User
    end


    def like!(instance)
      if is_likeable?(instance)
        instance.likes << Like.new(author: self) if !like?(instance)
        instance.save!
      else
        # Return exception
      end
    end

    def like?(instance)
      instance.likes.where(author: self).present?
    end

    def destroy_like!(instance)
      likes = instance.likes.where(author: self)
      likes.destroy_all if likes.present?
    end

  private
    def is_likeable?(instance)
      instance.const_defined?(:IsLikeable)
    end
  end
end