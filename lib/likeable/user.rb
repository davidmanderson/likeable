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
        instance.likes << Like.create!(user: self)
      else
        # Return exception
      end
    end

    def like?(instance)
      instance.likes.find_by_user_id(self).present?
    end

    def destroy_like!(instance)
      likes = instance.likes.find_by_user_id(self)
      likes.destroy_all if likes.present?
    end

  private
    def is_likeable?(instance)
      instance.const_defined?(:IsLikeable)
    end
  end
end