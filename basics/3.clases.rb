require_relative 'clases/student.class.rb'

student1 = Student.new("t","t","t","t","t")
student1.set_phone = 1233 #este se puede ejecutar gracias al setter individual
student1.set_mail = "abc@a.com"
student1.first_name = "Andres" #mientras q estos se ejecutan gracias a attr_accesor
student1.last_name = "Tamayo"

student1.username = "atamayo" #este se define por el writter

hashedPassword = student1.create_hash_passForClass("hola mundo");
puts "password hashed: #{hashedPassword}"

puts "muestro objeto completo #{student1}" #ejecuta el metodo: to_s
puts "el telefono #{student1.get_phone}"
puts "el username #{student1.get_username}"
puts "propiedades individuales #{student1.first_name} #{student1.last_name} #{student1.mail} "

#ejemplo usando el constructor o initilizacer
student2 = Student.new("Sara", "Zuleta", 1234, "szuleta","szlutea@abc")
puts "muestro objeto completo #{student2}" #ejecuta el metodo: to_s



