FactoryBot.define do
  factory :task do
    title { "Mi primera tarea" }
    description { "Descripción de prueba" }
    completed { false }
  end
end
