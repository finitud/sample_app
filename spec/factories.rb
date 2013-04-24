FactoryGirl.define do
  factory :user do
    name     "Ruben Martin"
    email    "rgm@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
