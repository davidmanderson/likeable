class Like < ActiveRecord::Base
  belongs_to :likeable, polymorphic: true
  belongs_to :author, polymorphic: true
  default_scope order: 'created_at ASC'
end