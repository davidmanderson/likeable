require 'rails/generators/migration'

class LikeableGenerator < Rails::Generators::Base
  include Rails::Generators::Migration

  def self.source_root
    @_likeable_source_root ||= File.expand_path("../templates", __FILE__)
  end

  def self.next_migration_number(path)
    Time.now.utc.strftime("%Y%m%d%H%M%S")
  end

  def create_model_file
    template "like.rb", "app/models/like.rb"
    migration_template "create_likes.rb", "db/migrate/create_likes.rb"
  end
end