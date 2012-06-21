module SimpleLike
  module Target
    def self.extended(model_class)
      model_class.instance_eval do
        extend Target
      end
    end

    def self.included(model_class)
      model_class.extend Target
    end

    def simple_like
      has_many :likes, { as: :likeable, dependant: :destroy }
    end

    def is_likeable
      true
    end
  end
end