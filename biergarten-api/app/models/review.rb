class Review < ApplicationRecord
    belongs_to :user
    belong_to :beer
end
