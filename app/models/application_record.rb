class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  connected_to shards: {

  }
end
