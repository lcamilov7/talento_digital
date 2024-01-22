# Borrando datos
puts "Borrando datos"
ClientInterest.destroy_all
Client.destroy_all
Conversation.destroy_all
User.destroy_all
Interest.destroy_all
puts "Datos borrados"

# Creando Interest
puts "Creando Interest"
analitica = Interest.create(name: "Analitica")
consultoria = Interest.create(name: "Consultoria")
mentoria = Interest.create(name: "Mentoria")
acompanamiento = Interest.create(name: "Acompanamiento")
legal = Interest.create(name: "Legal")
puts "######### Fin creación de interest ########"

# Creando usuarios y sus clientes
puts "Creando usuarios"
user1 = User.create(email: "admin@gmail.com", password: "123456", name: "Andres Ibanez", admin: true)
user2 = User.create(email: "usuario1@gmail.com", password: "123456", name: "Luis Valencia")
user3 = User.create(email: "usuario2@gmail.com", password: "123456", name: "Joaquin Casanova")
puts "######### Fin creación de usuarios ########"

# Creando cliente y interest
puts "Creando clientes"
cliente1 = user1.clients.build(
  status: 1,
  name: "Juan",
  email: "juan@gmail.com",
  phone: "3214765",
  interest_ids: [analitica.id, mentoria.id]
)
cliente1.save!
cliente2 = user1.clients.build(
  status: 0,
  name: "Ernesto",
  email: "Ernesto@gmail.com",
  phone: "3213792",
  interest_ids: [legal.id]
)
cliente2.save!

cliente3 = user2.clients.build(
  status: 2,
  name: "Sara",
  email: "Sara@gmail.com",
  phone: "3214985",
  interest_ids: [consultoria.id, mentoria.id]
)
cliente3.save!
cliente4 = user2.clients.build(
  status: 1,
  name: "Laura",
  email: "Laura@gmail.com",
  phone: "3176988",
  interest_ids: [acompanamiento.id]
)
cliente4.save!

cliente5 = user3.clients.build(
  status: 0,
  name: "Simon",
  email: "simon@gmail.com",
  phone: "3210936",
  interest_ids: [consultoria.id, legal.id]
)
cliente5.save!
cliente6 = user3.clients.build(
  status: 2,
  name: "Miguel",
  email: "miguel@gmail.com",
  phone: "32101348",
  interest_ids: [mentoria.id, analitica.id, legal.id]
)
cliente6.save!
