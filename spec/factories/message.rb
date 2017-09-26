FactoryGirl.define do
  factory :message do
    body                  Faker::Lorem.word
    image                 Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/きりん.jpeg'))
    group_id 1
    user_id 1
  end

end
