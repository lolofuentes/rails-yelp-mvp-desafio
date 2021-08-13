class Restaurant < ApplicationRecord
    has_many :review,dependent: :destroy
end
