FactoryBot.define do
  factory :channel do
    family { nil }
    supplier { nil }
    born_date { "2023-02-25 21:07:17" }
    slaughter_date { "2023-02-25 21:07:17" }
    crotal { "MyString" }
    lot { "MyString" }
    weight { 1.5 }
    weight_without_bones { 1.5 }
    weight_bones { 1.5 }
    temperature { 1.5 }
    total_value { "9.99" }
  end
end
