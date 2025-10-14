class Task < ApplicationRecord
    validates :title, presence: true, length: {maximum:40}
    validates :description, presence: true, length: { maximum: 50 }
    validates :completed, inclusion: { in: [true, false]}
end
