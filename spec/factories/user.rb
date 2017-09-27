FactoryGirl.define do
  factory :user do
    name                  "test2"
    email                 "test2@test.com"
    password              "00000000"
    password_confirmation "00000000"
  end

  # after(:create) do |user|
  #   create(:group_user, user: user, group: create(:group))
  # end

end
