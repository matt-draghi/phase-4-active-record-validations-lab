class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: { in: %w(Non-Fiction Fiction)}
    validate :title_is_clickbait

    def title_is_clickbait
        # unless title.match?(/Won't Believe|Secret|Top \d+|Guess/)
        #     title.errors
        # end
    end
end