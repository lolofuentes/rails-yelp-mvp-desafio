class Restaurant < ApplicationRecord
    has_many :reviews,dependent: :destroy
    validates :name, presence: true
    validates :address, presence: true
    validates :rating, inclusion: { in: [0,1,2,3], allow_nil: false }

end
