require 'faker'

FactoryGirl.define do

  factory :message do
    body                  Faker::Name.name
    image                 Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/きりん.jpeg'))
    user_id               1
    group_id              1
  end
end
