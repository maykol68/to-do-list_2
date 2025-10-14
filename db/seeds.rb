# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Task.create!([
  { title: "Comprar víveres", description: "Comprar leche, pan y frutas", completed: false },
  { title: "Hacer ejercicio", description: "Correr 30 minutos por el parque", completed: true },
  { title: "Leer un libro", description: "Continuar leyendo 'El Alquimista'", completed: false },
  { title: "Revisar correos", description: "Responder los pendientes del trabajo", completed: true },
  { title: "Estudiar Ruby on Rails", description: "Aprender sobre controladores y vistas", completed: false },
  { title: "Limpiar la casa", description: "Barrer y trapear la sala y la cocina", completed: false },
  { title: "Hacer respaldo del proyecto", description: "Subir los cambios a GitHub", completed: true },
  { title: "Pagar servicios", description: "Pagar la factura de energía y agua", completed: false },
  { title: "Preparar presentación", description: "Terminar las diapositivas para el lunes", completed: true },
  { title: "Llamar a mamá", description: "Ver cómo está y ponerse al día", completed: false }
])
