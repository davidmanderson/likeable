module Likeable
  module Target
    def self.extended(model_class)
      model_class.instance_eval do
        extend Target
      end
    end

    def self.included(model_class)
      model_class.extend Target
    end
  end
end