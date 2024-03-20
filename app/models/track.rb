class Track < ApplicationRecord
    self.per_page = 2
    has_one_attached :img
    has_one_attached :aud
end  
  # set per_page globally
  WillPaginate.per_page = 2