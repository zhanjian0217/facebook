# frozen_string_literal: true

FactoryBot.define do
  factory :article do
    content { Faker::Lorem.sentence }
    state { [0, 1, 2].sample }
  end
end
