class Tweet < ApplicationRecord
    belongs_to :user, optional: false
end
