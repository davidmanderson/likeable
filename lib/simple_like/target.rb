module SimpleLike
  module Target
    def simple_like
      has_many :likes, { as: :likeable, dependant: :destroy }
    end

    def is_likeable
      true
    end
  end
end