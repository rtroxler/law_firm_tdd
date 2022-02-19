FactoryBot.define do
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
