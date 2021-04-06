class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  connects_to shards: {
    default: {writing: :default, reading: :default},
    archive: {writing: :archive, reading: :archive}
  }
end
