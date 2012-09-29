require 'simple_like'
require 'rails'

module SimpleLike
  class Railtie < Rails::Railtie

    initializer "simple_like.active_record" do |app|
      ActiveSupport.on_load :active_record do
        include SimpleLike::Likeable
        include SimpleLike::Liker
      end
    end

  end
end