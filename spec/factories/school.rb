FactoryBot.define do
  factory :school, class: School do
    name 'Test School'
    address '246 Test St'
    principal 'Test Principal'
    capacity 115
    private_school true
  end
end 
