require 'simple_like/version'

module SimpleLike
  autoload :Likeable, "simple_like/likeable"
  autoload :Liker,    "simple_like/liker"
  
  require 'simple_like/railtie' if defined?(Rails) && Rails::VERSION::MAJOR >= 3
end