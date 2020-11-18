class User < ApplicationRecord
    has_many :tweets

    scope :fetch_by_first_name, -> (first_name) {
        first_name.present? ? where(first_name: first_name) : nil
    }
    scope :fetch_by_last_name, -> (last_name) {
        last_name.present? ? where(last_name: last_name) : nil
    }
end
