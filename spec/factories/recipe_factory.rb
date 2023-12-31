FactoryBot.define do
  factory :new_recipe do
    id { 1 }
    name { 'My First Recipe' }
    ingredients { '227g tub clotted cream, 25g butter, 1 tsp cornflour, 100g parmesan, grated nutmeg, 250g fresh fettuccine or tagliatelle, snipped chives or chopped parsley to serve (optional)' }
    instruction { 'In a medium saucepan, stir the clotted cream, butter, and cornflour over a low-ish heat and bring to a low simmer. Turn off the heat and keep warm.' }
  end
end