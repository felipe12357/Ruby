#para instalar gemas: sudo gem install bcrypt
# para ejecutar: ruby nombreArchivo.rb
require 'bcrypt'

my_password = BCrypt::Password.create("my password")
puts "result #{my_password}" #este es el password encriptado
puts my_password == "my password" #mustra true
puts my_password == "my wrong password" # muestra false


#para validar un password hago:
my_password_saved = BCrypt::Password.new("$2a$12$dchG3GTjV4AOjsn6vq4oBOtFvJqsr7WCTg2DpHelpPOwiEyG5h4KO")
#el anterior estring extraño se creo en una ejeuctacion previa de la linea 5, aca lo hago es simular q lo traigo de la bd
puts my_password_saved == "my password"


## ejemplo con clases
class User

    def initialize(password)
        @password = create_hash_pass(password)
        puts "password generado #{@password}"
    end

    def create_hash_pass(password)
        BCrypt::Password.create(password)
    end

    def verify_pass(passwordSent)
        #importante para q esto funcione, se tiene q almacenar en una variable para luego validar contra la otra
        passwordLoaded = BCrypt::Password.new(@password)
        passwordLoaded == passwordSent
    end

end

user1 = User.new("testa");
puts "resultado 1 #{user1.verify_pass("testa123")}"
puts "resultado 2 #{user1.verify_pass("testa")}"
