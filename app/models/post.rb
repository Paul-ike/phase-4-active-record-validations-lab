class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: ['Fiction', 'Non-Fiction'] }
    # validate :custom_validator

    # def custom_validator
    #     unless title.match?("Won't Believe")
    #         errors.add(:title, "You Won't Believe These True Facts")
    # end
end
