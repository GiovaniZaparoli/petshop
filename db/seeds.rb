# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Service.create!(
    name: 'Banho',
    description: 'Seu pet irá receber um banho com shampoo de primeira qualidade e as melhores técnicas higienização',
    price: 40.00,
    imagem: File.new(Rails.root.join('db/images/banho.jpeg'))
)

Service.create!(
    name: 'Tosa',
    description: 'Seu pet irá receber uma tosa higienica com total cuidado para que não haja interferência na anotomia do animal',
    price: 50.00,
    imagem: File.new(Rails.root.join('db/images/tosa.png'))
)

Service.create!(
    name: 'Treinamento Muscular',
    description: 'Seu pet ser irá acompanhado pelo instrutor duas vezes por semana durante 1 mês e receberá treinamentos de força',
    price: 500.00,
    imagem: File.new(Rails.root.join('db/images/treinamento.jpg'))
)

User.create!(
  email: 'admin@admin',
  password: 'mudar123',
  password_confirmation: 'mudar123'
)
