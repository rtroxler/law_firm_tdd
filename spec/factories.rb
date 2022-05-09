FactoryBot.define do
  factory :attorney do
    first_name { "MyString" }
    middle_name { "MyString" }
    last_name { "MyString" }
    suffix { "MyString" }
    firm { nil }
  end

  factory(:user) do
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }

    firm
  end

  factory(:firm) do
    name { Faker::Name.name }
  end
end
