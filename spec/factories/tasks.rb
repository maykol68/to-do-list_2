FactoryBot.define do
  factory :task do
    title { "Mi primera tarea" }
    description { "Descripción de prueba" }
    completed { false }

    factory :task_without_title do
      title { nil }
    end

    factory :task_without_description do
      description { nil }
    end

    factory :task_with_long_description do
      description { "a" * 100 }
    end

    factory :task_with_long_title do
      title { "a" * 50 }
    end
  end

  factory :task_2, class: 'Task' do
    title { "Mi segunda tarea" }
    description { "Descripción de prueba" }
    completed { false }
  end
end

