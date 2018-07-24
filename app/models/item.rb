class Item < ApplicationRecord
  belongs_to :user, optional: true

  default_scope { order('updated_at ASC') }
end
