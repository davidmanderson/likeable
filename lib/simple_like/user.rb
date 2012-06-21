module SimpleLike
  module User
    def like!(instance)
      if is_likeable?(instance)
        instance.likes << Like.new(author: self) if !like?(instance)
        instance.save!
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

  private
    def is_likeable?(instance)
      instance.class.try(:is_likeable)
    end
  end
end