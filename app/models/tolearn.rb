class Tolearn < ApplicationRecord
    validates :title, presence: true
    validates :text, presence: true, length: {minimum: 5, maximum:250}
end
