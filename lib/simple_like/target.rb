module SimpleLike
  module Target
    def simple_like
      has_many :likes, { as: :likeable, dependent: :destroy }
    end

    def is_likeable
      true
    end
  end
end